@extends('voyager::master')

@section('page_title', __('voyager::generic.viewing').' '. 'Laporan Stock In & Stock Out')

@section('page_header')
    <form method="get" action="">
        <div class="container-fluid">
            <h1 class="page-title">
                <i class="voyager-documentation"></i> Laporan Stock In & Stock Out
            </h1>
        </div>
    </form>
@stop

@section('content')
    <div class="page-content browse container-fluid">
        <div class="row">
            <div class="col-md-12">
                <form action="{{ route('incoming-outgoing.report') }}">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <label for="period">Periode</label>
                            <select id="period" class="form-control" name="period">
                                @foreach($months as $month)
                                    <option value="{{ $month['value'] }}">{{ $month['name'] }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="panel-footer">
                            <button type="submit" class="btn btn-primary">Unduh Laporan</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop
