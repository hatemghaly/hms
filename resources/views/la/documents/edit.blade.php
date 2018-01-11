@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/documents') }}">Document</a> :
@endsection
@section("contentheader_description", $document->$view_col)
@section("section", "Documents")
@section("section_url", url(config('laraadmin.adminRoute') . '/documents'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Documents Edit : ".$document->$view_col)

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
				{!! Form::model($document, ['route' => [config('laraadmin.adminRoute') . '.documents.update', $document->id ], 'method'=>'PUT', 'id' => 'document-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'patient_id')
					@la_input($module, 'attach_file')
					@la_input($module, 'doctor_id')
					@la_input($module, 'description')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/documents') }}">Cancel</a></button>
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
	$("#document-edit-form").validate({
		
	});
});
</script>
@endpush
