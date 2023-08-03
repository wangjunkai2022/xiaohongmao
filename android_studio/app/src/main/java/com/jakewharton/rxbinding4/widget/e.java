package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.AdapterView;
import kotlin.Metadata;

/* compiled from: AdapterViewItemClickEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0013\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/e;", "Lio/reactivex/rxjava3/core/g0;", "Lcom/jakewharton/rxbinding4/widget/d;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/AdapterView;", "a", "Landroid/widget/AdapterView;", "view", "<init>", "(Landroid/widget/AdapterView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class e extends io.reactivex.rxjava3.core.g0<d> {

    /* renamed from: a  reason: collision with root package name */
    private final AdapterView<?> f43969a;

    /* compiled from: AdapterViewItemClickEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u000e\u0010\u0014\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00110\u0010¢\u0006\u0004\b\u0015\u0010\u0016J.\u0010\f\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0014R\u0018\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0014\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/e$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/AdapterView$OnItemClickListener;", "Landroid/widget/AdapterView;", "parent", "Landroid/view/View;", "view", "", "position", "", "id", "", "onItemClick", "a", "b", "Landroid/widget/AdapterView;", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/d;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/AdapterView;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements AdapterView.OnItemClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final AdapterView<?> f43970b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super d> f43971c;

        public a(@m8.g AdapterView<?> adapterView, @m8.g io.reactivex.rxjava3.core.n0<? super d> n0Var) {
            this.f43970b = adapterView;
            this.f43971c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43970b.setOnItemClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
            if (isDisposed()) {
                return;
            }
            this.f43971c.onNext(new d(adapterView, view, i4, j4));
        }
    }

    public e(@m8.g AdapterView<?> adapterView) {
        this.f43969a = adapterView;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super d> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43969a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43969a.setOnItemClickListener(aVar);
        }
    }
}
