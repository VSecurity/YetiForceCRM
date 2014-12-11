<?php
/*+***********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 * Contributor(s): YetiForce.com
 *************************************************************************************/

class Vtiger_Boolean_UIType extends Vtiger_Base_UIType {

	/**
	 * Function to get the Template name for the current UI Type object
	 * @return <String> - Template Name
	 */
	public function getTemplateName() {
		return 'uitypes/Boolean.tpl';
	}

	/**
	 * Function to get the Display Value, for the current field type with given DB Insert Value
	 * @param <Object> $value
	 * @return <Object>
	 */
	public function getDisplayValue($value) {
		if($value === 1 || $value === '1' || strtolower($value) === 'on' || strtolower($value) === 'yes') {
			return Vtiger_Language_Handler::getTranslatedString('LBL_YES', $this->get('field')->getModuleName());
		}
		else if ( $value === 0 || $value === '0' || strtolower($value) === 'off' || strtolower($value) === 'no' ) {
			return Vtiger_Language_Handler::getTranslatedString('LBL_NO', $this->get('field')->getModuleName());
		}

		return $value;
	}

	public function getListSearchTemplateName() {
		return 'uitypes/BooleanFieldSearchView.tpl';
	}
}