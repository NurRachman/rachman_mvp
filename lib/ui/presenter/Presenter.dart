import 'package:rachman_mvp/ui/viewmodel/ViewModel.dart';
import 'package:rachman_mvp/ui/views/CounterView.dart';

class CounterPresenter {
    void onButton1Clicked() {}
    set counterView(CounterView value) {}
}

class BasicCounterPresenter implements CounterPresenter {

    CounterViewModel _counterViewModel;
    CounterView _counterView;

    BasicCounterPresenter() {
        this._counterViewModel = new CounterViewModel(0);
    }

    @override
    void onButton1Clicked() {
       this._counterViewModel.counter++;
       this._counterView.refreshCounter(this._counterViewModel);
    }

    @override
    set counterView(CounterView value) {
        _counterView = value;
        this._counterView.refreshCounter(this._counterViewModel);
    }


}
