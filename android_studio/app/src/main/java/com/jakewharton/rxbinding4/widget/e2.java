package com.jakewharton.rxbinding4.widget;

import android.view.MenuItem;
import android.widget.Toolbar;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;

/* compiled from: ToolbarItemClickObservable.kt */
@RequiresApi(21)
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/e2;", "Lio/reactivex/rxjava3/core/g0;", "Landroid/view/MenuItem;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/Toolbar;", "a", "Landroid/widget/Toolbar;", "view", "<init>", "(Landroid/widget/Toolbar;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class e2 extends io.reactivex.rxjava3.core.g0<MenuItem> {

    /* renamed from: a  reason: collision with root package name */
    private final Toolbar f43972a;

    /* compiled from: ToolbarItemClickObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\r¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0014R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/e2$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/Toolbar$OnMenuItemClickListener;", "Landroid/view/MenuItem;", "item", "", "onMenuItemClick", "", "a", "Landroid/widget/Toolbar;", "b", "Landroid/widget/Toolbar;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/Toolbar;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements Toolbar.OnMenuItemClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final Toolbar f43973b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super MenuItem> f43974c;

        public a(@m8.g Toolbar toolbar, @m8.g io.reactivex.rxjava3.core.n0<? super MenuItem> n0Var) {
            this.f43973b = toolbar;
            this.f43974c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43973b.setOnMenuItemClickListener(null);
        }

        @Override // android.widget.Toolbar.OnMenuItemClickListener
        public boolean onMenuItemClick(@m8.g MenuItem menuItem) {
            if (isDisposed()) {
                return false;
            }
            this.f43974c.onNext(menuItem);
            return true;
        }
    }

    public e2(@m8.g Toolbar toolbar) {
        this.f43972a = toolbar;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super MenuItem> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43972a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43972a.setOnMenuItemClickListener(aVar);
        }
    }
}
