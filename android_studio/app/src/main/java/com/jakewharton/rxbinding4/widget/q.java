package com.jakewharton.rxbinding4.widget;

import android.widget.PopupMenu;
import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: PopupMenuDismissObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0005\u001a\u00020\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/q;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "d6", "Landroid/widget/PopupMenu;", "a", "Landroid/widget/PopupMenu;", "view", "<init>", "(Landroid/widget/PopupMenu;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class q extends io.reactivex.rxjava3.core.g0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    private final PopupMenu f44024a;

    /* compiled from: PopupMenuDismissObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u000b¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0014R\u0014\u0010\n\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/q$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/PopupMenu$OnDismissListener;", "Landroid/widget/PopupMenu;", "popupMenu", "", "onDismiss", "a", "b", "Landroid/widget/PopupMenu;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/PopupMenu;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements PopupMenu.OnDismissListener {

        /* renamed from: b  reason: collision with root package name */
        private final PopupMenu f44025b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Unit> f44026c;

        public a(@m8.g PopupMenu popupMenu, @m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
            this.f44025b = popupMenu;
            this.f44026c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44025b.setOnDismissListener(null);
        }

        @Override // android.widget.PopupMenu.OnDismissListener
        public void onDismiss(@m8.g PopupMenu popupMenu) {
            if (isDisposed()) {
                return;
            }
            this.f44026c.onNext(Unit.INSTANCE);
        }
    }

    public q(@m8.g PopupMenu popupMenu) {
        this.f44024a = popupMenu;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44024a, n0Var);
            this.f44024a.setOnDismissListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }
}
