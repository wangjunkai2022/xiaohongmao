package com.jakewharton.rxbinding4.widget;

import android.view.MenuItem;
import android.widget.PopupMenu;
import kotlin.Metadata;

/* compiled from: PopupMenuItemClickObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/r;", "Lio/reactivex/rxjava3/core/g0;", "Landroid/view/MenuItem;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/PopupMenu;", "a", "Landroid/widget/PopupMenu;", "view", "<init>", "(Landroid/widget/PopupMenu;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class r extends io.reactivex.rxjava3.core.g0<MenuItem> {

    /* renamed from: a  reason: collision with root package name */
    private final PopupMenu f44033a;

    /* compiled from: PopupMenuItemClickObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\r¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0014R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/r$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/PopupMenu$OnMenuItemClickListener;", "Landroid/view/MenuItem;", "menuItem", "", "onMenuItemClick", "", "a", "Landroid/widget/PopupMenu;", "b", "Landroid/widget/PopupMenu;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/PopupMenu;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements PopupMenu.OnMenuItemClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final PopupMenu f44034b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super MenuItem> f44035c;

        public a(@m8.g PopupMenu popupMenu, @m8.g io.reactivex.rxjava3.core.n0<? super MenuItem> n0Var) {
            this.f44034b = popupMenu;
            this.f44035c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44034b.setOnMenuItemClickListener(null);
        }

        @Override // android.widget.PopupMenu.OnMenuItemClickListener
        public boolean onMenuItemClick(@m8.g MenuItem menuItem) {
            if (isDisposed()) {
                return false;
            }
            this.f44035c.onNext(menuItem);
            return true;
        }
    }

    public r(@m8.g PopupMenu popupMenu) {
        this.f44033a = popupMenu;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super MenuItem> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44033a, n0Var);
            this.f44033a.setOnMenuItemClickListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }
}
