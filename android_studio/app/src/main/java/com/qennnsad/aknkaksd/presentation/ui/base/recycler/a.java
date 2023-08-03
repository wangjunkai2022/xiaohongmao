package com.qennnsad.aknkaksd.presentation.ui.base.recycler;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.qennnsad.aknkaksd.presentation.ui.base.recycler.b;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

/* compiled from: SimpleRecyclerAdapter.java */
/* loaded from: classes3.dex */
public abstract class a<Data, Holder extends b<Data>> extends RecyclerView.Adapter<Holder> {

    /* renamed from: a  reason: collision with root package name */
    private List<Data> f52538a;

    public a(List<Data> list) {
        this.f52538a = list;
    }

    public final void d(List<Data> list) {
        this.f52538a.addAll(list);
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f52538a);
        this.f52538a.clear();
        this.f52538a.addAll(new ArrayList(linkedHashSet));
        notifyDataSetChanged();
    }

    public final void e(List<Data> list) {
        int size = this.f52538a.size();
        this.f52538a.addAll(list);
        notifyItemRangeChanged(size - 1, list.size());
    }

    public final void f() {
        List<Data> list = this.f52538a;
        if (list == null || list.size() == 0) {
            return;
        }
        this.f52538a.clear();
        notifyDataSetChanged();
    }

    @NonNull
    protected abstract Holder g(View view);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (h() == null) {
            return 0;
        }
        return h().size();
    }

    public List<Data> h() {
        return this.f52538a;
    }

    @LayoutRes
    protected abstract int i(int i4);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: j */
    public void onBindViewHolder(Holder holder, int i4) {
        holder.b(h().get(i4));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: k */
    public Holder onCreateViewHolder(ViewGroup viewGroup, int i4) {
        return g(LayoutInflater.from(viewGroup.getContext()).inflate(i(i4), viewGroup, false));
    }

    public final void l(List<Data> list) {
        this.f52538a = list;
        notifyDataSetChanged();
    }
}
