@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/appointments') }}">Appointment</a> :
@endsection
@section("contentheader_description", $appointment->$view_col)
@section("section", "Appointments")
@section("section_url", url(config('laraadmin.adminRoute') . '/appointments'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Appointments Edit : ".$appointment->$view_col)

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
				{!! Form::model($appointment, ['route' => [config('laraadmin.adminRoute') . '.appointments.update', $appointment->id ], 'method'=>'PUT', 'id' => 'appointment-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'patient_id')
					@la_input($module, 'section_id')
					@la_input($module, 'doctor_id')
					@la_input($module, 'appointment_date')
					@la_input($module, 'problem')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/appointments') }}">Cancel</a></button>
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
	$("#appointment-edit-form").validate({
		
	});
});
</script>
@endpush
