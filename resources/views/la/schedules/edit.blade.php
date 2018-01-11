@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/schedules') }}">Schedule</a> :
@endsection
@section("contentheader_description", $schedule->$view_col)
@section("section", "Schedules")
@section("section_url", url(config('laraadmin.adminRoute') . '/schedules'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Schedules Edit : ".$schedule->$view_col)

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
				{!! Form::model($schedule, ['route' => [config('laraadmin.adminRoute') . '.schedules.update', $schedule->id ], 'method'=>'PUT', 'id' => 'schedule-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'doctor_id')
					@la_input($module, 'available_days')
					@la_input($module, 'available_time')
					@la_input($module, 'per_patient_time')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/schedules') }}">Cancel</a></button>
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
	$("#schedule-edit-form").validate({
		
	});
});
</script>
@endpush
