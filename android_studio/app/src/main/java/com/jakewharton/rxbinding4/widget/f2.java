package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.Toolbar;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.Unit;

/* compiled from: ToolbarNavigationClickObservable.kt */
@RequiresApi(21)
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0005\u001a\u00020\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/f2;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "d6", "Landroid/widget/Toolbar;", "a", "Landroid/widget/Toolbar;", "view", "<init>", "(Landroid/widget/Toolbar;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class f2 extends io.reactivex.rxjava3.core.g0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    private final Toolbar f43978a;

    /* compiled from: ToolbarNavigationClickObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\f¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0005H\u0014R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001c\u0010\u000f\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/f2$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/View$OnClickListener;", "Landroid/view/View;", "v", "", "onClick", "a", "Landroid/widget/Toolbar;", "b", "Landroid/widget/Toolbar;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/Toolbar;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements View.OnClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final Toolbar f43979b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Unit> f43980c;

        public a(@m8.g Toolbar toolbar, @m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
            this.f43979b = toolbar;
            this.f43980c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43979b.setNavigationOnClickListener(null);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(@m8.g View view) {
            if (isDisposed()) {
                return;
            }
            this.f43980c.onNext(Unit.INSTANCE);
        }
    }

    public f2(@m8.g Toolbar toolbar) {
        this.f43978a = toolbar;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43978a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43978a.setNavigationOnClickListener(aVar);
        }
    }
}
