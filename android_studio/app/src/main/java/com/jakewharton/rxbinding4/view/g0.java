package com.jakewharton.rxbinding4.view;

import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewAttachesObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0005\u001a\u00020\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/view/g0;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "d6", "Landroid/view/View;", "a", "Landroid/view/View;", "view", "", "b", "Z", "callOnAttach", "<init>", "(Landroid/view/View;Z)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class g0 extends io.reactivex.rxjava3.core.g0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    private final View f43860a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f43861b;

    /* compiled from: ViewAttachesObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0005H\u0014R\u0014\u0010\u000b\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/jakewharton/rxbinding4/view/g0$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/View;", "v", "", "onViewAttachedToWindow", "onViewDetachedFromWindow", "a", "b", "Landroid/view/View;", "view", "", "c", "Z", "callOnAttach", "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/View;ZLio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements View.OnAttachStateChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final View f43862b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f43863c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Unit> f43864d;

        public a(@m8.g View view, boolean z9, @m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
            this.f43862b = view;
            this.f43863c = z9;
            this.f43864d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43862b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@m8.g View view) {
            if (!this.f43863c || isDisposed()) {
                return;
            }
            this.f43864d.onNext(Unit.INSTANCE);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@m8.g View view) {
            if (this.f43863c || isDisposed()) {
                return;
            }
            this.f43864d.onNext(Unit.INSTANCE);
        }
    }

    public g0(@m8.g View view, boolean z9) {
        this.f43860a = view;
        this.f43861b = z9;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43860a, this.f43861b, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43860a.addOnAttachStateChangeListener(aVar);
        }
    }
}
