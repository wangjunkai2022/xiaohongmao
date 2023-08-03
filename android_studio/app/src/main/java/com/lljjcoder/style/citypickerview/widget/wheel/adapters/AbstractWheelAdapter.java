package com.lljjcoder.style.citypickerview.widget.wheel.adapters;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class AbstractWheelAdapter implements WheelViewAdapter {
    private List<DataSetObserver> datasetObservers;

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public View getEmptyItem(View view, ViewGroup viewGroup) {
        return null;
    }

    protected void notifyDataChangedEvent() {
        List<DataSetObserver> list = this.datasetObservers;
        if (list != null) {
            for (DataSetObserver dataSetObserver : list) {
                dataSetObserver.onChanged();
            }
        }
    }

    protected void notifyDataInvalidatedEvent() {
        List<DataSetObserver> list = this.datasetObservers;
        if (list != null) {
            for (DataSetObserver dataSetObserver : list) {
                dataSetObserver.onInvalidated();
            }
        }
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.datasetObservers == null) {
            this.datasetObservers = new LinkedList();
        }
        this.datasetObservers.add(dataSetObserver);
    }

    @Override // com.lljjcoder.style.citypickerview.widget.wheel.adapters.WheelViewAdapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        List<DataSetObserver> list = this.datasetObservers;
        if (list != null) {
            list.remove(dataSetObserver);
        }
    }
}
