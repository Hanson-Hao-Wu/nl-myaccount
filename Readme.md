# Myaccount
---
## 1 Project Structrue

### 1.1 webapp

```
graph LR
webapp-->css
webapp-->font-awesome
webapp-->include
webapp-->js
webapp-->WEB-INF
webapp-->jspPages...
```

---
## Page Structrue
```
graph LR
Myaccount-->header
Myaccount-->nl-content
Myaccount-->footer

nl-content-->form_body
nl-content-->form_aside

form_body-->container
form_body-->container.highlight

container-->row
container.highlight-->row

row-->col-sm-12

form_aside-->panel_panel-primary

```
---
## form_body

### highlight
>inside div.contrainer
```
<div class="container highlight">
	<div class="row">
	</div>
</div>
```
```
.highlight {
    background-color: #f7f7f9;
    border: 1px solid #e1e1e8;
    border-radius: 4px;
    margin: 20px 0 30px;
	padding: 20px 15px 20px;
}
```

### table
```
<table class="table table-col-6">

<thead>
	<tr>
		<th><label>Primary Member</label></th>
		<th><label>Members on Account</label></th>
		<th><label>Expiry Date</label></th>
		<th><label>Balance</label></th>
		<th><label>Operator</label></th>
	</tr>
</thead>
<tbody>
	<tr>
		<td><label>HAO WU</label></td>
		<td><label>3</label></td>
		<td><label>January 31, 2017</label></td>
		<td><label>-$5.00</label></td>
		<td><button type="button" class="btn">Primary</button></td>
	</tr>
</tbody>
</table>
```
```
/* table-col-6 */
.table-col-6>thead:not(:first-child){
	display: none;
}
.table-col-6 th>label,.table-col-6 td>label{
	padding: 7px 12px;
	font-weight: inherit;
	margin-bottom: 0;
}

@media ( max-width : 768px) {
	/* table-col-6 */
	.table-col-6{
		border-width: 0 !important;
	}
 	.table-col-6>thead, .table-col-6>tbody{
		display: inline-block !important;
		border-top: 3px solid #ddd;
		margin-bottom: 10px;
		position: relative;
	}
	.table-col-6>thead{
		width: 45%;
	}
	.table-col-6 tbody{
		width: 55%;
		float: right;
	}
	.table-col-6 th,.table-col-6 td{
		border-width: 0px !important;
		display: inline-block;
		width: 100%;
		position: relative;
	}
	.table-col-6 td{
		padding-left: 10px !important; 
	}
	.table-col-6 th{
		padding-left: 10% !important; 
	}
}
```

### .block
```
<div class="row block">
	<div class="col-sm-12">
	</div>
</div>
```
```
.block{
	margin-bottom:20px;
}
```

### nl-memberlist & nl-price-list
```
<ul class="list-group nl-memberlist">
	<li class="list-group-item active clearfix"><label
		class="pull-left nl-title">MEMBER(S)</label> <label
		class="pull-right nl-title">COST</label></li>
	<li class="list-group-item clearfix">
		<label class="pull-left">JULIE SURIANO</label>
		<label class="pull-right">$10.00</label>
	</li>
</ul>
```

```
<ul class="list-group nl-price-list">
	<li class="list-group-item clearfix">
		<label class="pull-left">PRIOR BALANCE:</label>
		<label class="pull-right">$0.00</label>
	</li>
	<li class="list-group-item clearfix">
		<label class="pull-left">SUB-TOTAL:</label>
		<label class="pull-right">$68.00</label>
	</li>
	<li class="list-group-item clearfix bold">
		<label class="pull-left">TOTAL DUE:</label>
		<label class="pull-right">$68.00</label>
	</li>
</ul>
```

```
/* Member and price list */
.nl-title{
	font-size: 1.3em;
	font-weight: bold;
}
.nl-memberlist, .nl-memberlist label, .nl-price-list label{
	margin-bottom: 0;
}
.nl-memberlist label, .nl-price-list label{
	font-weight: normal;
}
.nl-price-list .list-group-item{
	border:1px solid transparent;
}
```# nl-myaccount
