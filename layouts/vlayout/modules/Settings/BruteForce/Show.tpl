{*
/*+***********************************************************************************************************************************
 * The contents of this file are subject to the YetiForce Public License Version 1.1 (the "License"); you may not use this file except
 * in compliance with the License.
 * Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied.
 * See the License for the specific language governing rights and limitations under the License.
 * The Original Code is YetiForce.
 * The Initial Developer of the Original Code is YetiForce. Portions created by YetiForce are Copyright (C) www.yetiforce.com. 
 * All Rights Reserved.
 *************************************************************************************************************************************/
 *}
 <style>
.brute_force_form td, label{
    text-align:center !important; 
    vertical-align:middle !important; 
    margin-bottom:0px !important;
}
</style>
<div class="container-fluid" style="margin-top:10px;">
	<h3>{vtranslate('BruteForce', $MODULE)}</h3>&nbsp;{vtranslate('LBL_BRUTEFORCE_DESCRIPTION', $MODULE)}<hr>
	<ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
		<li class="active" id="brutalforce_tab_btn_1" ><a href="#tab_1">{vtranslate('Settings', $MODULE)}</a></li>
		<li  id="brutalforce_tab_btn_2" ><a href="#tab_2">{vtranslate('Blocked IP', $MODULE)}</a></li>
	</ul>
	<div id="my-tab-content" class="tab-content" >
	<div class='editViewContainer tab-panel' id="brutalforce_tab_1">
		<form id="brutalforce_tab_form_1" name="brutalforce_tab_1">
		<table class="table table-bordered table-condensed themeTableColor">
		<thead>
			<tr class="blockHeader">
				<th colspan="2" class="mediumWidthType">
					<span class="alignMiddle">{vtranslate('BruteForce settings', $MODULE)}</span>
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="30%"><label class="muted pull-right marginRight10px">{vtranslate('Number of attempts', $MODULE)}</label></td>
				<td style="border-left: none;"><input type="text" name="attempsnumber" id="min_length" value="{$ATTEMPS_NUMBER}" /></td>
			</tr>
			<tr>
				<td width="30%"><label class="muted pull-right marginRight10px">{vtranslate('Time lock', $MODULE)}</label></td>
				<td style="border-left: none;"><input type="text" name="timelock" id="min_length" value="{$BLOCK_TIME}" /></td>
			</tr>
		</tbody>
		</table>
		<div class="pull-right" style="margin: 10px;">
		<button class="btn btn-success saveButton" type="submit" id='saveConfig' title="Zapisz"><strong>Zapisz</strong></button></div>
		</form>
	</div>
	<div class='editViewContainer tab-pane' id="brutalforce_tab_2" style="display:none;">
		<form id="brutalforce_tab_form_1" name="brutalforce_tab_2">
		<table class="table table-bordered table-condensed themeTableColor brute_force_form">
		<thead>
			<tr class="blockHeader">
				<th colspan="1" class="mediumWidthType">
					<span class="alignMiddle">{vtranslate('IP', $MODULE)}</span>
				</th>
				<th colspan="1" class="mediumWidthType">
					<span class="alignMiddle">{vtranslate('Date', $MODULE)}</span>
				</th>
				 <th colspan="1" class="mediumWidthType">
					<span class="alignMiddle">{vtranslate('Users', $MODULE)}</span>
				</th>    
				 <th colspan="1" class="mediumWidthType">
					<span class="alignMiddle">{vtranslate('Browsers', $MODULE)}</span>
				</th>     
				  <th colspan="1" class="mediumWidthType">
					<span class="alignMiddle">{vtranslate('Unblock', $MODULE)}</span>
				</th>
			</tr>
		</thead>
		<tbody>					   
			{foreach from=$BLOCKED item=foo}
			<tr>
				<td width="23%"><label class="marginRight5px" >{$foo.ip}</label></td>
				<td width="23%"><label class="marginRight5px" >{$foo.date}</label></td>
				<td width="23%"><label class="marginRight5px" >{$foo.users}</label></td>
				<td width="23%"><label class="marginRight5px" >{$foo.browsers}</label></td>
				<td width="23%"><label class="marginRight5px" >
				   <button data-ip="{$foo.ip}" class="btn btn-success" type="button" id='unblock' title="Zapisz"><strong>{vtranslate('Unblock', $MODULE)}</strong></button></label></td>
			</tr>
			{/foreach}
		</tbody>
		</table>
		</form>
		</div>  
	</div>
</div>