@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/patients') }}">Patient</a> :
@endsection
@section("contentheader_description", $patient->$view_col)
@section("section", "Patients")
@section("section_url", url(config('laraadmin.adminRoute') . '/patients'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Patients Edit : ".$patient->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($patient, ['route' => [config('laraadmin.adminRoute') . '.patients.update', $patient->id ], 'method'=>'PUT', 'id' => 'patient-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'first_name')
					@la_input($module, 'last_name')
					@la_input($module, 'email')
					@la_input($module, 'password')
					@la_input($module, 'phone')
					@la_input($module, 'mobile')
					@la_input($module, 'blood_group')
					@la_input($module, 'sex')
					@la_input($module, 'date_of_birth')
					@la_input($module, 'picture')
					@la_input($module, 'address')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/patients') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#patient-edit-form").validate({
		
	});
});
</script>
@endpush
