package com.jakewharton.rxbinding4.view;

import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewTreeObserverPreDrawObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0005\u001a\u00020\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/view/a1;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "d6", "Landroid/view/View;", "a", "Landroid/view/View;", "view", "Lkotlin/Function0;", "", "b", "Lkotlin/jvm/functions/Function0;", "proceedDrawingPass", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class a1 extends io.reactivex.rxjava3.core.g0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    private final View f43837a;

    /* renamed from: b  reason: collision with root package name */
    private final Function0<Boolean> f43838b;

    /* compiled from: ViewTreeObserverPreDrawObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B-\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b\u0012\u000e\u0010\u0012\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u000f¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0012\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/jakewharton/rxbinding4/view/a1$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/ViewTreeObserver$OnPreDrawListener;", "", "onPreDraw", "", "a", "Landroid/view/View;", "b", "Landroid/view/View;", "view", "Lkotlin/Function0;", "c", "Lkotlin/jvm/functions/Function0;", "proceedDrawingPass", "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: b  reason: collision with root package name */
        private final View f43839b;

        /* renamed from: c  reason: collision with root package name */
        private final Function0<Boolean> f43840c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Unit> f43841d;

        public a(@m8.g View view, @m8.g Function0<Boolean> function0, @m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
            this.f43839b = view;
            this.f43840c = function0;
            this.f43841d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43839b.getViewTreeObserver().removeOnPreDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            if (isDisposed()) {
                return true;
            }
            this.f43841d.onNext(Unit.INSTANCE);
            try {
                return this.f43840c.invoke().booleanValue();
            } catch (Exception e4) {
                this.f43841d.onError(e4);
                dispose();
                return true;
            }
        }
    }

    public a1(@m8.g View view, @m8.g Function0<Boolean> function0) {
        this.f43837a = view;
        this.f43838b = function0;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43837a, this.f43838b, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43837a.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }
}
