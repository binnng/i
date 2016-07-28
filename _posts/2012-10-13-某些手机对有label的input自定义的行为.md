---
layout: post
title:  "某些手机对有label的input自定义的行为"
date:   2012-10-13 09:00:00
categories: SMUDGE
image: code_label_bug.jpg
---

在写客户端找回密码的wap页面的时候发现的诡异现象，代码如下：

<pre class="prettyprint">

        &ltlabel&gt手机号：&ltinput type="text" value="" /&gt&lt/label&gt

	&ltlabel&gt帐号密码：&ltinput type="text" value="" /&gt&lt/label&gt

</pre>

当input获得焦点的时候，其对应label内容会成为input的“值”（其实不是值啦，表现类似值），当输入值的时候，表现正常。类似给placeholder赋了label的值。如下图：


测试找我时，我也觉得很奇怪，以为是个bug。后来经过写Demo，用测试机访问别的网站，才确认这是这台测试机自定义的行为。原因也很容易理解：label相当于对这个input的提示，input获得焦点时，这个提示以“值”的形式展现出来，开始输入时就消失。



关于对input作提示有两种方式，一个是placeholder，另一个则是label。当已经存在label时，再用这个label自定义个类似placeholder的行为，个人认为是很自作聪明的。



记录下来，印象深刻些，以后若再遇到就不会奇怪了。