@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/beds') }}">Bed</a> :
@endsection
@section("contentheader_description", $bed->$view_col)
@section("section", "Beds")
@section("section_url", url(config('laraadmin.adminRoute') . '/beds'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Beds Edit : ".$bed->$view_col)

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
				{!! Form::model($bed, ['route' => [config('laraadmin.adminRoute') . '.beds.update', $bed->id ], 'method'=>'PUT', 'id' => 'bed-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'bed_type')
					@la_input($module, 'description')
					@la_input($module, 'bed_capacity')
					@la_input($module, 'charge')
					@la_input($module, 'status')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/beds') }}">Cancel</a></button>
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
	$("#bed-edit-form").validate({
		
	});
});
</script>
@endpush
