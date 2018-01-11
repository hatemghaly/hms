@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/insurances') }}">Insurance</a> :
@endsection
@section("contentheader_description", $insurance->$view_col)
@section("section", "Insurances")
@section("section_url", url(config('laraadmin.adminRoute') . '/insurances'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Insurances Edit : ".$insurance->$view_col)

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
				{!! Form::model($insurance, ['route' => [config('laraadmin.adminRoute') . '.insurances.update', $insurance->id ], 'method'=>'PUT', 'id' => 'insurance-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'insurance_name')
					@la_input($module, 'description')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/insurances') }}">Cancel</a></button>
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
	$("#insurance-edit-form").validate({
		
	});
});
</script>
@endpush
