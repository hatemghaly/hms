@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/death_reports') }}">Death Report</a> :
@endsection
@section("contentheader_description", $death_report->$view_col)
@section("section", "Death Reports")
@section("section_url", url(config('laraadmin.adminRoute') . '/death_reports'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Death Reports Edit : ".$death_report->$view_col)

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
				{!! Form::model($death_report, ['route' => [config('laraadmin.adminRoute') . '.death_reports.update', $death_report->id ], 'method'=>'PUT', 'id' => 'death_report-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'patient_id')
					@la_input($module, 'date')
					@la_input($module, 'title')
					@la_input($module, 'description')
					@la_input($module, 'doctor_name')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/death_reports') }}">Cancel</a></button>
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
	$("#death_report-edit-form").validate({
		
	});
});
</script>
@endpush
