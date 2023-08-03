package com.jakewharton.rxbinding4.view;

import android.view.View;
import kotlin.Metadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewAttachEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/jakewharton/rxbinding4/view/f0;", "Lio/reactivex/rxjava3/core/g0;", "Lcom/jakewharton/rxbinding4/view/e0;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/view/View;", "a", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class f0 extends io.reactivex.rxjava3.core.g0<e0> {

    /* renamed from: a  reason: collision with root package name */
    private final View f43857a;

    /* compiled from: ViewAttachEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\r0\f¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0005H\u0014R\u0014\u0010\u000b\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001c\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/jakewharton/rxbinding4/view/f0$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/View;", "v", "", "onViewAttachedToWindow", "onViewDetachedFromWindow", "a", "b", "Landroid/view/View;", "view", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/view/e0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/View;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements View.OnAttachStateChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final View f43858b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super e0> f43859c;

        public a(@m8.g View view, @m8.g io.reactivex.rxjava3.core.n0<? super e0> n0Var) {
            this.f43858b = view;
            this.f43859c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43858b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@m8.g View view) {
            if (isDisposed()) {
                return;
            }
            this.f43859c.onNext(new c0(this.f43858b));
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@m8.g View view) {
            if (isDisposed()) {
                return;
            }
            this.f43859c.onNext(new d0(this.f43858b));
        }
    }

    public f0(@m8.g View view) {
        this.f43857a = view;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super e0> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43857a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43857a.addOnAttachStateChangeListener(aVar);
        }
    }
}
