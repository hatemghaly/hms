@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/bed_assigns') }}">Bed Assign</a> :
@endsection
@section("contentheader_description", $bed_assign->$view_col)
@section("section", "Bed Assigns")
@section("section_url", url(config('laraadmin.adminRoute') . '/bed_assigns'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Bed Assigns Edit : ".$bed_assign->$view_col)

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
				{!! Form::model($bed_assign, ['route' => [config('laraadmin.adminRoute') . '.bed_assigns.update', $bed_assign->id ], 'method'=>'PUT', 'id' => 'bed_assign-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'patient_id')
					@la_input($module, 'bed_type')
					@la_input($module, 'assign_date')
					@la_input($module, 'discharge_date')
					@la_input($module, 'description')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/bed_assigns') }}">Cancel</a></button>
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
	$("#bed_assign-edit-form").validate({
		
	});
});
</script>
@endpush
