<style>
.md0{margin-top: 150px;}
.md1{margin-top: 75px;}
.md2{margin-top: 50px;}
.md3{margin-top: 25px;}
.md4{margin-top: 5px;}
.tbl1 td#header{background-color: D1ECCF}
.tbl1 tr#header{background-color: D1ECCF}
</style>


# [<span style="color:black;">Flutter My Library</span>](Flutter.md)
[Diagram](Flutter-Diagram.md) |
[Basic](Flutter-Basic.md) |
[Structure](Flutter-Structure.md) |
[Script](Flutter-Script.md) |
[Application](Flutter-Application.md) |
[My Library](Flutter-MyLibrary.md)


<div class="md3"></div>
<a href="#aa">aaa</a>


<div class="md1"></div>

## General

	import 'package:flutter/cupertino.dart';
	import 'package:flutter/material.dart';

	class MyClass {
	  
	  Text myText({int id, String text, int style}) {
		switch (id) {
		  case 1:
			return Text(
			  text,
			  style: myTextStyle(style),
			);
		}
	  }

	  TextStyle myTextStyle(int id) {
		switch (id) {
		  case 1:
			return TextStyle(
			  color: Colors.red,
			);
		  case 2:
			return TextStyle(
			  fontSize: 16,
			  fontWeight: FontWeight.bold,
			);
		  case 3:
			return TextStyle(
			  fontWeight: FontWeight.bold,
			  fontSize: 20,
			  color: Colors.purple,
			);
		}
	  }
	}
