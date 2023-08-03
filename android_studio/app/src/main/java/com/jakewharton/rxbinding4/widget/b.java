package com.jakewharton.rxbinding4.widget;

import android.widget.AbsListView;
import kotlin.Metadata;

/* compiled from: AbsListViewScrollEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/b;", "Lio/reactivex/rxjava3/core/g0;", "Lcom/jakewharton/rxbinding4/widget/a;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/AbsListView;", "a", "Landroid/widget/AbsListView;", "view", "<init>", "(Landroid/widget/AbsListView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class b extends io.reactivex.rxjava3.core.g0<com.jakewharton.rxbinding4.widget.a> {

    /* renamed from: a  reason: collision with root package name */
    private final AbsListView f43945a;

    /* compiled from: AbsListViewScrollEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0003\u0012\u000e\u0010\u0018\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J(\u0010\f\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0007H\u0014R\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0013\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0018\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00150\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/b$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/AbsListView$OnScrollListener;", "Landroid/widget/AbsListView;", "absListView", "", "scrollState", "", "onScrollStateChanged", "firstVisibleItem", "visibleItemCount", "totalItemCount", "onScroll", "a", "b", "I", "currentScrollState", "c", "Landroid/widget/AbsListView;", "view", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/a;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/AbsListView;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements AbsListView.OnScrollListener {

        /* renamed from: b  reason: collision with root package name */
        private int f43946b;

        /* renamed from: c  reason: collision with root package name */
        private final AbsListView f43947c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super com.jakewharton.rxbinding4.widget.a> f43948d;

        public a(@m8.g AbsListView absListView, @m8.g io.reactivex.rxjava3.core.n0<? super com.jakewharton.rxbinding4.widget.a> n0Var) {
            this.f43947c = absListView;
            this.f43948d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43947c.setOnScrollListener(null);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(@m8.g AbsListView absListView, int i4, int i10, int i11) {
            if (isDisposed()) {
                return;
            }
            this.f43948d.onNext(new com.jakewharton.rxbinding4.widget.a(this.f43947c, this.f43946b, i4, i10, i11));
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(@m8.g AbsListView absListView, int i4) {
            this.f43946b = i4;
            if (isDisposed()) {
                return;
            }
            AbsListView absListView2 = this.f43947c;
            this.f43948d.onNext(new com.jakewharton.rxbinding4.widget.a(absListView2, i4, absListView2.getFirstVisiblePosition(), this.f43947c.getChildCount(), this.f43947c.getCount()));
        }
    }

    public b(@m8.g AbsListView absListView) {
        this.f43945a = absListView;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super com.jakewharton.rxbinding4.widget.a> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43945a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43945a.setOnScrollListener(aVar);
        }
    }
}
