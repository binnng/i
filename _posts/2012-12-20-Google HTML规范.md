---
layout: post
title:  "Google HTML规范"
date:   2012-12-20 09:00:00
categories: SMUDGE
---

一、协议

省略引入媒体，样式，脚本文件的协议部分，会根据http或者https自动选择 。引用站外内容还是用http://。

Not recommended

<pre class="prettyprint">

&ltscript src="http://www.google.com/js/gweb/analytics/autotrack.js"&gt&lt/script&gt

</pre>

Recommended

<pre class="prettyprint">

&ltscript src="//www.google.com/js/gweb/analytics/autotrack.js"&gt&lt/script&gt

</pre>



二、缩进

用两个空格，而不是tab

<pre class="prettyprint">

&ltul&gt

  &ltli&gtFantastic

  &ltli&gtGreat

&lt/ul&gt

</pre>

<pre class="prettyprint">

.example {

  color: blue;

}

</pre>



三、大小写

所有代码都只用小写字母，包括标签名，属性，属性值（不包括text/CDATA），选择器，行内样式等。

Not recommended

<pre class="prettyprint">

&ltA HREF="/"&gtHome&lt/A&gt

</pre>

Recommended

<pre class="prettyprint">

&ltimg src="google.png" alt="Google"&gt

</pre>



四、编码

确保编辑器是UTF-8编码





五、文档类型

//用HTML5

<pre class="prettyprint">

&lt!DOCTYPE html&gt

</pre>



六、可忽略标签

<a href="http://www.whatwg.org/specs/web-apps/current-work/multipage/syntax.html#syntax-tag-omission" target="_blank">HTML5 specification</a>定义了哪些标签可以省略。



七、HTML中使用双引号

Not recommended

<pre class="prettyprint">

&lta class='maia-button maia-button-secondary'&gtSign in&lt/a&gt

</pre>

Recommended

<pre class="prettyprint">

&lta class="maia-button maia-button-secondary"&gtSign in&lt/a&gt

</pre>