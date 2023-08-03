package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import java.util.LinkedList;
import java.util.List;

/* compiled from: AbstractWheelAdapter.java */
/* loaded from: classes3.dex */
public abstract class a implements m {

    /* renamed from: a  reason: collision with root package name */
    private List<DataSetObserver> f53093a;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
        List<DataSetObserver> list = this.f53093a;
        if (list != null) {
            for (DataSetObserver dataSetObserver : list) {
                dataSetObserver.onChanged();
            }
        }
    }

    protected void b() {
        List<DataSetObserver> list = this.f53093a;
        if (list != null) {
            for (DataSetObserver dataSetObserver : list) {
                dataSetObserver.onInvalidated();
            }
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public View getEmptyItem(View view, ViewGroup viewGroup) {
        return null;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        if (this.f53093a == null) {
            this.f53093a = new LinkedList();
        }
        this.f53093a.add(dataSetObserver);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        List<DataSetObserver> list = this.f53093a;
        if (list != null) {
            list.remove(dataSetObserver);
        }
    }
}
