<script>
$(document).ready(function() {
    $('#regexpForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            fullName: {
                validators: {
                    regexp: {
                        regexp: [a-zA-Z0-9]+,
                        message: 'The full name can consist of alphabetical characters and spaces only'
                    }
                }
            }
        }
    });
});
</script>

<div class="container">
  <form  class="form-horizontal" role="form"  method="post">
    <fieldset>
      <legend>Payment</legend>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-holder-name">Name on Card</label>
        <div class="col-sm-9">
          	<input type="text" class="form-control" name="card-holder-name" 
          		tabindex="1" pattern="[A-Za-z0-9\S]{3,10}" title="Space not allowed & minimum length for Name is 3" required="true" 
          		id="card-holder-name" placeholder="Card Holder's Name">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="card-number">Card Number</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" name="cardN" tabindex="1" pattern="[A-Za-z0-9\S]{10,16}" title="Space not allowed & minimum length for Card Name is 10" required="true"id="card-number" placeholder="Debit/Credit Card Number">
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="expiry-month">Expiration Date</label>
        <div class="col-sm-9">
          <div class="row">
            <div class="col-xs-3">
              <select class="form-control col-sm-2" name="exM" id="expiry-month">
                <option>Month</option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
            </div>
            <div class="col-xs-3">
              <select class="form-control" name="exY">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-3 control-label" for="cvv">Card CVV</label>
        <div class="col-sm-3">
          <input type="text" class="form-control" name="cvN" id="cvv" placeholder="Security Code" 
          tabindex="1" pattern="[A-Za-z0-9\S]{3,}" title="Space not allowed & minimum length should be 3" required="true">
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-3 col-sm-9">
</div>
   
     <input type="submit" name="_eventId_submit" class="subscribe btn btn-link btn-block" >
</div>
</fieldset>
</form>
</div>