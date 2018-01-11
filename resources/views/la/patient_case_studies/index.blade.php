@extends("la.layouts.app")

@section("contentheader_title", "Patient Case Studies")
@section("contentheader_description", "Patient Case Studies listing")
@section("section", "Patient Case Studies")
@section("sub_section", "Listing")
@section("htmlheader_title", "Patient Case Studies Listing")

@section("headerElems")
@la_access("Patient_Case_Studies", "create")
	<button class="btn btn-success btn-sm pull-right" data-toggle="modal" data-target="#AddModal">Add Patient Case Study</button>
@endla_access
@endsection

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

<div class="box box-success">
	<!--<div class="box-header"></div>-->
	<div class="box-body">
		<table id="example1" class="table table-bordered">
		<thead>
		<tr class="success">
			@foreach( $listing_cols as $col )
			<th>{{ $module->fields[$col]['label'] or ucfirst($col) }}</th>
			@endforeach
			@if($show_actions)
			<th>Actions</th>
			@endif
		</tr>
		</thead>
		<tbody>
			
		</tbody>
		</table>
	</div>
</div>

@la_access("Patient_Case_Studies", "create")
<div class="modal fade" id="AddModal" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Add Patient Case Study</h4>
			</div>
			{!! Form::open(['action' => 'LA\Patient_Case_StudiesController@store', 'id' => 'patient_case_study-add-form']) !!}
			<div class="modal-body">
				<div class="box-body">
                    @la_form($module)
					
					{{--
					@la_input($module, 'patient_id')
					@la_input($module, 'food_allergies')
					@la_input($module, 'tendency_bleed')
					@la_input($module, 'heart_disease')
					@la_input($module, 'high_blood_pressure')
					@la_input($module, 'diabetic')
					@la_input($module, 'surgery')
					@la_input($module, 'accident')
					@la_input($module, 'others')
					@la_input($module, 'family_history')
					@la_input($module, 'currenm_medication')
					@la_input($module, 'female_pregnancy')
					@la_input($module, 'breast_feeding')
					@la_input($module, 'health_insurance')
					@la_input($module, 'low_Income')
					@la_input($module, 'reference')
					@la_input($module, 'status')
					--}}
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				{!! Form::submit( 'Submit', ['class'=>'btn btn-success']) !!}
			</div>
			{!! Form::close() !!}
		</div>
	</div>
</div>
@endla_access

@endsection

@push('styles')
<link rel="stylesheet" type="text/css" href="{{ asset('la-assets/plugins/datatables/datatables.min.css') }}"/>
@endpush

@push('scripts')
<script src="{{ asset('la-assets/plugins/datatables/datatables.min.js') }}"></script>
<script>
$(function () {
	$("#example1").DataTable({
		processing: true,
        serverSide: true,
        ajax: "{{ url(config('laraadmin.adminRoute') . '/patient_case_study_dt_ajax') }}",
		language: {
			lengthMenu: "_MENU_",
			search: "_INPUT_",
			searchPlaceholder: "Search"
		},
		@if($show_actions)
		columnDefs: [ { orderable: false, targets: [-1] }],
		@endif
	});
	$("#patient_case_study-add-form").validate({
		
	});
});
</script>
@endpush
