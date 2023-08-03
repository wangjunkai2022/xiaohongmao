package com.jakewharton.rxbinding4.view;

import android.view.MenuItem;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MenuItemClickObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B#\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0005\u001a\u00020\u00022\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/view/e;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "d6", "Landroid/view/MenuItem;", "a", "Landroid/view/MenuItem;", "menuItem", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class e extends io.reactivex.rxjava3.core.g0<Unit> {

    /* renamed from: a  reason: collision with root package name */
    private final MenuItem f43852a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<MenuItem, Boolean> f43853b;

    /* compiled from: MenuItemClickObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\f\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u0010¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0014R\u0014\u0010\u000b\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/jakewharton/rxbinding4/view/e$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/MenuItem$OnMenuItemClickListener;", "Landroid/view/MenuItem;", "item", "", "onMenuItemClick", "", "a", "b", "Landroid/view/MenuItem;", "menuItem", "Lkotlin/Function1;", "c", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements MenuItem.OnMenuItemClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final MenuItem f43854b;

        /* renamed from: c  reason: collision with root package name */
        private final Function1<MenuItem, Boolean> f43855c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Unit> f43856d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g MenuItem menuItem, @m8.g Function1<? super MenuItem, Boolean> function1, @m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
            this.f43854b = menuItem;
            this.f43855c = function1;
            this.f43856d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43854b.setOnMenuItemClickListener(null);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(@m8.g MenuItem menuItem) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (this.f43855c.invoke(this.f43854b).booleanValue()) {
                    this.f43856d.onNext(Unit.INSTANCE);
                    return true;
                }
                return false;
            } catch (Exception e4) {
                this.f43856d.onError(e4);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(@m8.g MenuItem menuItem, @m8.g Function1<? super MenuItem, Boolean> function1) {
        this.f43852a = menuItem;
        this.f43853b = function1;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Unit> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43852a, this.f43853b, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43852a.setOnMenuItemClickListener(aVar);
        }
    }
}
