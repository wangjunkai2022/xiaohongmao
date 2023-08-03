package com.futuremind.recyclerviewfastscroll;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RecyclerViewScrollListener.java */
/* loaded from: classes2.dex */
public class a extends RecyclerView.OnScrollListener {

    /* renamed from: a  reason: collision with root package name */
    private final FastScroller f16108a;

    /* renamed from: b  reason: collision with root package name */
    List<InterfaceC0125a> f16109b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    int f16110c = 0;

    /* compiled from: RecyclerViewScrollListener.java */
    /* renamed from: com.futuremind.recyclerviewfastscroll.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0125a {
        void a(float relativePos);
    }

    public a(FastScroller scroller) {
        this.f16108a = scroller;
    }

    public void a(InterfaceC0125a listener) {
        this.f16109b.add(listener);
    }

    public void b(float relativePos) {
        for (InterfaceC0125a interfaceC0125a : this.f16109b) {
            interfaceC0125a.a(relativePos);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(RecyclerView rv) {
        int computeHorizontalScrollOffset;
        int computeHorizontalScrollExtent;
        int computeHorizontalScrollRange;
        if (this.f16108a.m()) {
            computeHorizontalScrollOffset = rv.computeVerticalScrollOffset();
            computeHorizontalScrollExtent = rv.computeVerticalScrollExtent();
            computeHorizontalScrollRange = rv.computeVerticalScrollRange();
        } else {
            computeHorizontalScrollOffset = rv.computeHorizontalScrollOffset();
            computeHorizontalScrollExtent = rv.computeHorizontalScrollExtent();
            computeHorizontalScrollRange = rv.computeHorizontalScrollRange();
        }
        float f10 = computeHorizontalScrollOffset / (computeHorizontalScrollRange - computeHorizontalScrollExtent);
        this.f16108a.setScrollerPosition(f10);
        b(f10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newScrollState) {
        super.onScrollStateChanged(recyclerView, newScrollState);
        if (newScrollState == 0 && this.f16110c != 0) {
            this.f16108a.getViewProvider().h();
        } else if (newScrollState != 0 && this.f16110c == 0) {
            this.f16108a.getViewProvider().i();
        }
        this.f16110c = newScrollState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(@NonNull RecyclerView rv, int dx, int dy) {
        if (this.f16108a.o()) {
            c(rv);
        }
    }
}
