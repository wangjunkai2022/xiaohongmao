package com.jakewharton.rxbinding4.view;

import android.view.KeyEvent;
import android.view.View;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewKeyObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB#\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/view/p0;", "Lio/reactivex/rxjava3/core/g0;", "Landroid/view/KeyEvent;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/view/View;", "a", "Landroid/view/View;", "view", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class p0 extends io.reactivex.rxjava3.core.g0<KeyEvent> {

    /* renamed from: a  reason: collision with root package name */
    private final View f43888a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<KeyEvent, Boolean> f43889b;

    /* compiled from: ViewKeyObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u0010\u0012\u000e\u0010\u0017\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u0014¢\u0006\u0004\b\u0018\u0010\u0019J \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0014R\u0014\u0010\u000f\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR \u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0017\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/jakewharton/rxbinding4/view/p0$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/View$OnKeyListener;", "Landroid/view/View;", "v", "", "keyCode", "Landroid/view/KeyEvent;", "event", "", "onKey", "", "a", "b", "Landroid/view/View;", "view", "Lkotlin/Function1;", "c", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements View.OnKeyListener {

        /* renamed from: b  reason: collision with root package name */
        private final View f43890b;

        /* renamed from: c  reason: collision with root package name */
        private final Function1<KeyEvent, Boolean> f43891c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super KeyEvent> f43892d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g View view, @m8.g Function1<? super KeyEvent, Boolean> function1, @m8.g io.reactivex.rxjava3.core.n0<? super KeyEvent> n0Var) {
            this.f43890b = view;
            this.f43891c = function1;
            this.f43892d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43890b.setOnKeyListener(null);
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(@m8.g View view, int i4, @m8.g KeyEvent keyEvent) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (this.f43891c.invoke(keyEvent).booleanValue()) {
                    this.f43892d.onNext(keyEvent);
                    return true;
                }
                return false;
            } catch (Exception e4) {
                this.f43892d.onError(e4);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public p0(@m8.g View view, @m8.g Function1<? super KeyEvent, Boolean> function1) {
        this.f43888a = view;
        this.f43889b = function1;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super KeyEvent> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43888a, this.f43889b, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43888a.setOnKeyListener(aVar);
        }
    }
}
