<?php
/**
 * Controller genrated using LaraAdmin
 * Help: http://laraadmin.com
 */

namespace App\Http\Controllers\LA;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests;
use Auth;
use DB;
use Validator;
use Datatables;
use Collective\Html\FormFacade as Form;
use Dwij\Laraadmin\Models\Module;
use Dwij\Laraadmin\Models\ModuleFields;

use App\Models\Patient_Case_Study;

class Patient_Case_StudiesController extends Controller
{
	public $show_action = true;
	public $view_col = 'patient_id';
	public $listing_cols = ['id', 'patient_id', 'food_allergies', 'tendency_bleed', 'heart_disease', 'high_blood_pressure', 'diabetic', 'surgery', 'accident', 'others', 'family_history', 'currenm_medication', 'female_pregnancy', 'breast_feeding', 'health_insurance', 'low_Income', 'reference', 'status'];
	
	public function __construct() {
		// Field Access of Listing Columns
		if(\Dwij\Laraadmin\Helpers\LAHelper::laravel_ver() == 5.3) {
			$this->middleware(function ($request, $next) {
				$this->listing_cols = ModuleFields::listingColumnAccessScan('Patient_Case_Studies', $this->listing_cols);
				return $next($request);
			});
		} else {
			$this->listing_cols = ModuleFields::listingColumnAccessScan('Patient_Case_Studies', $this->listing_cols);
		}
	}
	
	/**
	 * Display a listing of the Patient_Case_Studies.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function index()
	{
		$module = Module::get('Patient_Case_Studies');
		
		if(Module::hasAccess($module->id)) {
			return View('la.patient_case_studies.index', [
				'show_actions' => $this->show_action,
				'listing_cols' => $this->listing_cols,
				'module' => $module
			]);
		} else {
            return redirect(config('laraadmin.adminRoute')."/");
        }
	}

	/**
	 * Show the form for creating a new patient_case_study.
	 *
	 * @return \Illuminate\Http\Response
	 */
	public function create()
	{
		//
	}

	/**
	 * Store a newly created patient_case_study in database.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\Response
	 */
	public function store(Request $request)
	{
		if(Module::hasAccess("Patient_Case_Studies", "create")) {
		
			$rules = Module::validateRules("Patient_Case_Studies", $request);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();
			}
			
			$insert_id = Module::insert("Patient_Case_Studies", $request);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.patient_case_studies.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Display the specified patient_case_study.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function show($id)
	{
		if(Module::hasAccess("Patient_Case_Studies", "view")) {
			
			$patient_case_study = Patient_Case_Study::find($id);
			if(isset($patient_case_study->id)) {
				$module = Module::get('Patient_Case_Studies');
				$module->row = $patient_case_study;
				
				return view('la.patient_case_studies.show', [
					'module' => $module,
					'view_col' => $this->view_col,
					'no_header' => true,
					'no_padding' => "no-padding"
				])->with('patient_case_study', $patient_case_study);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("patient_case_study"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Show the form for editing the specified patient_case_study.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function edit($id)
	{
		if(Module::hasAccess("Patient_Case_Studies", "edit")) {			
			$patient_case_study = Patient_Case_Study::find($id);
			if(isset($patient_case_study->id)) {	
				$module = Module::get('Patient_Case_Studies');
				
				$module->row = $patient_case_study;
				
				return view('la.patient_case_studies.edit', [
					'module' => $module,
					'view_col' => $this->view_col,
				])->with('patient_case_study', $patient_case_study);
			} else {
				return view('errors.404', [
					'record_id' => $id,
					'record_name' => ucfirst("patient_case_study"),
				]);
			}
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Update the specified patient_case_study in storage.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function update(Request $request, $id)
	{
		if(Module::hasAccess("Patient_Case_Studies", "edit")) {
			
			$rules = Module::validateRules("Patient_Case_Studies", $request, true);
			
			$validator = Validator::make($request->all(), $rules);
			
			if ($validator->fails()) {
				return redirect()->back()->withErrors($validator)->withInput();;
			}
			
			$insert_id = Module::updateRow("Patient_Case_Studies", $request, $id);
			
			return redirect()->route(config('laraadmin.adminRoute') . '.patient_case_studies.index');
			
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}

	/**
	 * Remove the specified patient_case_study from storage.
	 *
	 * @param  int  $id
	 * @return \Illuminate\Http\Response
	 */
	public function destroy($id)
	{
		if(Module::hasAccess("Patient_Case_Studies", "delete")) {
			Patient_Case_Study::find($id)->delete();
			
			// Redirecting to index() method
			return redirect()->route(config('laraadmin.adminRoute') . '.patient_case_studies.index');
		} else {
			return redirect(config('laraadmin.adminRoute')."/");
		}
	}
	
	/**
	 * Datatable Ajax fetch
	 *
	 * @return
	 */
	public function dtajax()
	{
		$values = DB::table('patient_case_studies')->select($this->listing_cols)->whereNull('deleted_at');
		$out = Datatables::of($values)->make();
		$data = $out->getData();

		$fields_popup = ModuleFields::getModuleFields('Patient_Case_Studies');
		
		for($i=0; $i < count($data->data); $i++) {
			for ($j=0; $j < count($this->listing_cols); $j++) { 
				$col = $this->listing_cols[$j];
				if($fields_popup[$col] != null && starts_with($fields_popup[$col]->popup_vals, "@")) {
					$data->data[$i][$j] = ModuleFields::getFieldValue($fields_popup[$col], $data->data[$i][$j]);
				}
				if($col == $this->view_col) {
					$data->data[$i][$j] = '<a href="'.url(config('laraadmin.adminRoute') . '/patient_case_studies/'.$data->data[$i][0]).'">'.$data->data[$i][$j].'</a>';
				}
				// else if($col == "author") {
				//    $data->data[$i][$j];
				// }
			}
			
			if($this->show_action) {
				$output = '';
				if(Module::hasAccess("Patient_Case_Studies", "edit")) {
					$output .= '<a href="'.url(config('laraadmin.adminRoute') . '/patient_case_studies/'.$data->data[$i][0].'/edit').'" class="btn btn-warning btn-xs" style="display:inline;padding:2px 5px 3px 5px;"><i class="fa fa-edit"></i></a>';
				}
				
				if(Module::hasAccess("Patient_Case_Studies", "delete")) {
					$output .= Form::open(['route' => [config('laraadmin.adminRoute') . '.patient_case_studies.destroy', $data->data[$i][0]], 'method' => 'delete', 'style'=>'display:inline']);
					$output .= ' <button class="btn btn-danger btn-xs" type="submit"><i class="fa fa-times"></i></button>';
					$output .= Form::close();
				}
				$data->data[$i][] = (string)$output;
			}
		}
		$out->setData($data);
		return $out;
	}
}
