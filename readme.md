# Gliss

Gliss is a constraint based layout system for articles. It uses the CSS properties `width` and `max-width` instead of media queries to change the layout at different viewport sizes. You can [see a demo here](http://gliss.pgdn.us/), and the [related source code](https://github.com/scottkellum/gliss/blob/master/test-compass/sass/style.scss).

## Getting started

### Install with Compass:

In your terminal execute:

```
gem install gliss-layout
```

In your `config.rb` file write

```
require 'gliss'
```

And finally, import Gliss into your stylesheet

```
@import 'gliss';
```

### Install without Compass:

Download the [latest release](https://github.com/scottkellum/gliss/releases).

Unzip into your project and import Gliss into your stylesheet

```
@import 'gliss';
```

## Documentation

First, you are going to want to configure Gliss. Here are the main variables to define your grid:

<table>
<tr>
<th>Variable</th><th>Default</th><th>Description</th></tr>
<tr>
<td>$gliss-max-width</td><td>80rem</td><td>Max width of content container. This must be a fixed width (em, rem or px)</td></tr>
<tr>
<td>$gliss-gutter</td><td>1rem</td><td>Gutter width, must be same units as $max-width.</td></tr>
<tr>
<td>$gliss-margin</td><td>4%</td><td>Margins on either side of the content container.</td></tr>
<tr>
<td>$gliss-cols</td><td>12</td><td>Number of columns the grid is divided into.</td></tr>
</table>

So far this just provides you with a basic toolset, but if you want to have something more out of the box to work with, set `$gliss-modules` to `true` and define these variables as needed:

<table>
<tr>
<th>Variable</th><th>Default</th><th>Description</th></tr>
<tr>
<td>$gliss-modules</td><td>false</td><td>Generates default styles so you can get going with writing markup.</td></tr>
<tr>
<td>$gliss-wrapper</td><td>'article'</td><td>The wrapper for the entire article.</td></tr>
<tr>
<td>$gliss-text</td><td>'.text'</td><td>A block of text.</td></tr>
<tr>
<td>$gliss-figure</td><td>'figure'</td><td>A figure to contain an image, media or graphic that you wish to be floated alongside the main text column.</td></tr>
</table>


Gliss is primarily designed to help out with math by providing a few mixins that set the width constraints and alignment on elements.

The primary mixin you will use is `gliss()` and you can pass the small and large constraints to it. If we wanted `foo` to be 6 columns wide at small sizes and 3 columns wide at the largest sizes then we would write it like this:

```scss
foo {
	@include gliss(6,3);
}
```

This will generate the following CSS:

```css
figure._quarter {
	width: 19.25rem;
	max-width: calc(50% + -0.5rem);
}
```

For alignment, you can choose left, right, or center by using the following mixins:

```scss
foo {
	@include gliss-center();
	@include gliss-left();
	@include gliss-right();
}
```

If you are generating Gliss modules, then use the module definitions you have created with your variables.

First off, the markup should be structure something like this:

```html
<article>
  <figure></figure>
  <div class="text"></div>
  <figure></figure>
  <div class="text"></div>
</article>
```

Gliss figures have a number of modifiers available. `._half`, `._third`, and `._quarter` set elements to be half width, a quarter width, or one third the width of the page at the max width of the layout. All three degrade to half width. `._left` and `._right` will float these figures left or right.

`._hang` is an additional figure modifier that will align the figure with the main text column and also push it flush with the side of the article. You can use `._left` and `._right` with hanging figures.

This framework is intended as a barebones toolset, not something that will solve all your layout problems for you. It is intended as a beginning to solving some tough problems, not an end and it’s likely that you will find value in reworking components to fit your needs.

## Authors

[Scott Kellum](https://github.com/scottkellum)

## Contribute

This is an active project and we encourage contributions. [Please review our guidelines and code of conduct before contributing.](https://github.com/voxmedia/open-source-contribution-guidelines)

## License

Copyright (c) 2015, Vox Media, Inc.
All rights reserved.

BSD license

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.