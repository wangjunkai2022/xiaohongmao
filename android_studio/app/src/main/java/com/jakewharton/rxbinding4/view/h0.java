package com.jakewharton.rxbinding4.view;

import android.view.View;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewClickObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0005\u001a\u00020\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/jakewharton/rxbinding4/view/h0;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "d6", "Landroid/view/View;", "a", "Landroid/view/View;", "view", "<init>", "(Landroid/view/View;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class h0 extends io.reactivex.rxjava3.core.g0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    private final View f43865a;

    /* compiled from: ViewClickObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0014R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/view/h0$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/View$OnClickListener;", "Landroid/view/View;", "v", "", "onClick", "a", "b", "Landroid/view/View;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/View;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final View f43866b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Unit> f43867c;

        public a(@m8.g View view, @m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
            this.f43866b = view;
            this.f43867c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43866b.setOnClickListener(null);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@m8.g View view) {
            if (isDisposed()) {
                return;
            }
            this.f43867c.onNext(Unit.INSTANCE);
        }
    }

    public h0(@m8.g View view) {
        this.f43865a = view;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43865a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43865a.setOnClickListener(aVar);
        }
    }
}
