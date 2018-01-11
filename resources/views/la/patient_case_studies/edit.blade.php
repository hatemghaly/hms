@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/patient_case_studies') }}">Patient Case Study</a> :
@endsection
@section("contentheader_description", $patient_case_study->$view_col)
@section("section", "Patient Case Studies")
@section("section_url", url(config('laraadmin.adminRoute') . '/patient_case_studies'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Patient Case Studies Edit : ".$patient_case_study->$view_col)

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
				{!! Form::model($patient_case_study, ['route' => [config('laraadmin.adminRoute') . '.patient_case_studies.update', $patient_case_study->id ], 'method'=>'PUT', 'id' => 'patient_case_study-edit-form']) !!}
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
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/patient_case_studies') }}">Cancel</a></button>
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
	$("#patient_case_study-edit-form").validate({
		
	});
});
</script>
@endpush
