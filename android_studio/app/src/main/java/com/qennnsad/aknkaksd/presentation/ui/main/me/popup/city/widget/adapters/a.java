package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedList;
import java.util.List;

/* compiled from: AbstractWheelAdapter.java */
/* loaded from: classes3.dex */
public abstract class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private List<DataSetObserver> f53027a;

    protected void a() {
        List<DataSetObserver> list = this.f53027a;
        if (list != null) {
            for (DataSetObserver dataSetObserver : list) {
                dataSetObserver.onChanged();
            }
        }
    }

    protected void b() {
        List<DataSetObserver> list = this.f53027a;
        if (list != null) {
            for (DataSetObserver dataSetObserver : list) {
                dataSetObserver.onInvalidated();
            }
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f
    public View getEmptyItem(View view, ViewGroup viewGroup) {
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.f53027a == null) {
            this.f53027a = new LinkedList();
        }
        this.f53027a.add(dataSetObserver);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.city.widget.adapters.f
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        List<DataSetObserver> list = this.f53027a;
        if (list != null) {
            list.remove(dataSetObserver);
        }
    }
}
