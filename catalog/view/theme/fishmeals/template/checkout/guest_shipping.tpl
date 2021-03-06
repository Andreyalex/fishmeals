<form class="form-horizontal">
  <div class="form-group required">
    <label class="col-sm-3 control-label" for="input-shipping-firstname"><?php echo $entry_firstname; ?></label>
    <div class="col-sm-9">
      <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-shipping-firstname" class="form-control" />
    </div>
  </div>
  <div class="form-group required">
    <label class="col-sm-3 control-label" for="input-shipping-lastname"><?php echo $entry_lastname; ?></label>
    <div class="col-sm-9">
      <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-shipping-lastname" class="form-control" />
    </div>
  </div>
  <div class="form-group required">
    <label class="col-sm-3 control-label" for="input-shipping-zone"><?php echo $entry_zone; ?></label>
    <div class="col-sm-9">
      <select name="zone_id" id="input-shipping-zone" class="form-control">
      </select>
    </div>
  </div>
  <div class="form-group required">
    <label class="col-sm-3 control-label" for="input-shipping-city">Населенный пункт</label>
    <div class="col-sm-9">
        <input type="text" name="city" value="<?php echo $city; ?>" placeholder="<?php echo $entry_city; ?>" id="input-shipping-city" class="form-control" />
    </div>
  </div>

    <input type="hidden" name="company" value="" id="input-shipping-company" />
    <input type="hidden" name="address_1" value="" id="input-shipping-address-1" />
    <input type="hidden" name="address_2" value="" id="input-shipping-address-2" />
    <input type="hidden" name="postcode" value="" id="input-shipping-postcode" />
    <input type="hidden" name="country_id" value="220" id="input-shipping-country" />

    <?php foreach ($custom_fields as $custom_field) { ?>
  <?php if ($custom_field['type'] == 'select') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <select name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control">
        <option value=""><?php echo $text_select; ?></option>
        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
        <?php if ($custom_field_value['custom_field_value_id'] == $custom_field['value']) { ?>
        <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>" selected="selected"><?php echo $custom_field_value['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $custom_field_value['custom_field_value_id']; ?>"><?php echo $custom_field_value['name']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'radio') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <div id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>">
        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
        <div class="radio">
          <?php if ($custom_field_value['custom_field_value_id'] == $custom_field['value']) { ?>
          <label>
            <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
            <?php echo $custom_field_value['name']; ?></label>
          <?php } else { ?>
          <label>
            <input type="radio" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
            <?php echo $custom_field_value['name']; ?></label>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'checkbox') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <div id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>">
        <?php foreach ($custom_field['custom_field_value'] as $custom_field_value) { ?>
        <div class="checkbox">
          <?php if (in_array($custom_field_value['custom_field_value_id'], $custom_field['value'])) { ?>
          <label>
            <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" checked="checked" />
            <?php echo $custom_field_value['name']; ?></label>
          <?php } else { ?>
          <label>
            <input type="checkbox" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>][]" value="<?php echo $custom_field_value['custom_field_value_id']; ?>" />
            <?php echo $custom_field_value['name']; ?></label>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'text') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <input type="text" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'textarea') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <textarea name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" rows="5" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control"><?php echo $custom_field['value']; ?></textarea>
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'file') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <button type="button" id="button-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="btn btn-default"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
      <input type="hidden" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" />
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'date') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <input type="date" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'datetime') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <input type="datetime-local" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
    </div>
  </div>
  <?php } ?>
  <?php if ($custom_field['type'] == 'time') { ?>
  <div class="form-group<?php echo ($custom_field['required'] ? ' required' : ''); ?> custom-field">
    <label class="col-sm-3 control-label" for="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>"><?php echo $custom_field['name']; ?></label>
    <div class="col-sm-9">
      <input type="time" name="custom_field[<?php echo $custom_field['custom_field_id']; ?>]" value="<?php echo $custom_field['value']; ?>" placeholder="<?php echo $custom_field['name']; ?>" id="input-shipping-custom-field<?php echo $custom_field['custom_field_id']; ?>" class="form-control" />
    </div>
  </div>
  <?php } ?>
  <?php } ?>
  <div class="buttons">
    <div class="pull-right">
      <input type="button" value="<?php echo $button_continue; ?>" id="button-guest-shipping" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary" />
    </div>
  </div>
</form>
<script type="text/javascript"><!--
$('#collapse-shipping-address [name=\'country_id\']').on('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#collapse-shipping-address [name=\'country_id\']').after(' <i class="fa fa-spinner fa-spin"></i>');
		},
		complete: function() {
			$('.fa-spinner').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#collapse-shipping-address input[name=\'postcode\']').parent().parent().addClass('required');
			} else {
				$('#collapse-shipping-address input[name=\'postcode\']').parent().parent().removeClass('required');
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone']) {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('#collapse-shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#collapse-shipping-address [name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('#collapse-shipping-address button[id^=\'button-shipping-custom-field\']').on('click', function() {
	var node = this;
	
	$('#form-upload').remove();
	
	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	$('#form-upload input[name=\'file\']').on('change', function() {
		$.ajax({
			url: 'index.php?route=checkout/checkout/upload',
			type: 'post',		
			dataType: 'json',
			data: new FormData($(this).parent()[0]),
			cache: false,
			contentType: false,
			processData: false,		
			beforeSend: function() {
				$(node).find('i').replaceWith('<i class="fa fa-spinner fa-spin"></i>');
				$(node).prop('disabled', true);
			},
			complete: function() {
				$(node).find('i').replaceWith('<i class="fa fa-upload"></i>');
				$(node).prop('disabled', false);			
			},		
			success: function(json) {
				if (json['error']) {
					$(node).parent().find('input[name^=\'custom_field\']').after('<div class="text-danger">' + json['error'] + '</div>');
				}
							
				if (json['success']) {
					alert(json['success']);
					
					$(node).parent().find('input[name^=\'custom_field\']').attr('value', json['file']);
				}
			},			
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	});
});
//--></script>