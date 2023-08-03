package com.jakewharton.rxbinding4.view;

import android.view.MenuItem;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MenuItemActionViewEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB#\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/view/c;", "Lio/reactivex/rxjava3/core/g0;", "Lcom/jakewharton/rxbinding4/view/b;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/view/MenuItem;", "a", "Landroid/view/MenuItem;", "menuItem", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class c extends io.reactivex.rxjava3.core.g0<b> {

    /* renamed from: a  reason: collision with root package name */
    private final MenuItem f43844a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<b, Boolean> f43845b;

    /* compiled from: MenuItemActionViewEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0010\u0012\u000e\u0010\u0016\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0014R\u0014\u0010\u000f\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0011R\u001c\u0010\u0016\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lcom/jakewharton/rxbinding4/view/c$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/MenuItem$OnActionExpandListener;", "Lcom/jakewharton/rxbinding4/view/b;", "event", "", "c", "Landroid/view/MenuItem;", "item", "onMenuItemActionExpand", "onMenuItemActionCollapse", "", "a", "b", "Landroid/view/MenuItem;", "menuItem", "Lkotlin/Function1;", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements MenuItem.OnActionExpandListener {

        /* renamed from: b  reason: collision with root package name */
        private final MenuItem f43846b;

        /* renamed from: c  reason: collision with root package name */
        private final Function1<b, Boolean> f43847c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super b> f43848d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g MenuItem menuItem, @m8.g Function1<? super b, Boolean> function1, @m8.g io.reactivex.rxjava3.core.n0<? super b> n0Var) {
            this.f43846b = menuItem;
            this.f43847c = function1;
            this.f43848d = n0Var;
        }

        private final boolean c(b bVar) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (this.f43847c.invoke(bVar).booleanValue()) {
                    this.f43848d.onNext(bVar);
                    return true;
                }
                return false;
            } catch (Exception e4) {
                this.f43848d.onError(e4);
                dispose();
                return false;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43846b.setOnActionExpandListener(null);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(@m8.g MenuItem menuItem) {
            return c(new com.jakewharton.rxbinding4.view.a(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(@m8.g MenuItem menuItem) {
            return c(new d(menuItem));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@m8.g MenuItem menuItem, @m8.g Function1<? super b, Boolean> function1) {
        this.f43844a = menuItem;
        this.f43845b = function1;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super b> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43844a, this.f43845b, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43844a.setOnActionExpandListener(aVar);
        }
    }
}
