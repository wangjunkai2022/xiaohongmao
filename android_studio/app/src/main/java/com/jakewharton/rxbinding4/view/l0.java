package com.jakewharton.rxbinding4.view;

import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;

/* compiled from: ViewGroupHierarchyChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/jakewharton/rxbinding4/view/l0;", "Lio/reactivex/rxjava3/core/g0;", "Lcom/jakewharton/rxbinding4/view/k0;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/view/ViewGroup;", "a", "Landroid/view/ViewGroup;", "viewGroup", "<init>", "(Landroid/view/ViewGroup;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class l0 extends io.reactivex.rxjava3.core.g0<k0> {

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroup f43876a;

    /* compiled from: ViewGroupHierarchyChangeEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u000f0\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0016J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\u0006H\u0014R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001c\u0010\u0012\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/jakewharton/rxbinding4/view/l0$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/ViewGroup$OnHierarchyChangeListener;", "Landroid/view/View;", "parent", "child", "", "onChildViewAdded", "onChildViewRemoved", "a", "Landroid/view/ViewGroup;", "b", "Landroid/view/ViewGroup;", "viewGroup", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/view/k0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/ViewGroup;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final ViewGroup f43877b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super k0> f43878c;

        public a(@m8.g ViewGroup viewGroup, @m8.g io.reactivex.rxjava3.core.n0<? super k0> n0Var) {
            this.f43877b = viewGroup;
            this.f43878c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43877b.setOnHierarchyChangeListener(null);
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(@m8.g View view, @m8.g View view2) {
            if (isDisposed()) {
                return;
            }
            this.f43878c.onNext(new m0(this.f43877b, view2));
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(@m8.g View view, @m8.g View view2) {
            if (isDisposed()) {
                return;
            }
            this.f43878c.onNext(new n0(this.f43877b, view2));
        }
    }

    public l0(@m8.g ViewGroup viewGroup) {
        this.f43876a = viewGroup;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super k0> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43876a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43876a.setOnHierarchyChangeListener(aVar);
        }
    }
}
