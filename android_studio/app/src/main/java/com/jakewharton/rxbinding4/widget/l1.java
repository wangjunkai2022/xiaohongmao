package com.jakewharton.rxbinding4.widget;

import android.widget.SearchView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchViewQueryTextChangeEventsObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/l1;", "Lcom/jakewharton/rxbinding4/a;", "Lcom/jakewharton/rxbinding4/widget/n1;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/SearchView;", "a", "Landroid/widget/SearchView;", "view", "D8", "()Lcom/jakewharton/rxbinding4/widget/n1;", "initialValue", "<init>", "(Landroid/widget/SearchView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class l1 extends com.jakewharton.rxbinding4.a<n1> {

    /* renamed from: a  reason: collision with root package name */
    private final SearchView f44003a;

    /* compiled from: SearchViewQueryTextChangeEventsObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\b\u0010\n\u001a\u00020\tH\u0014R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/l1$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/SearchView$OnQueryTextListener;", "", "s", "", "onQueryTextChange", s2.d.f93273b, "onQueryTextSubmit", "", "a", "Landroid/widget/SearchView;", "b", "Landroid/widget/SearchView;", "view", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/n1;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/SearchView;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements SearchView.OnQueryTextListener {

        /* renamed from: b  reason: collision with root package name */
        private final SearchView f44004b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super n1> f44005c;

        public a(@m8.g SearchView searchView, @m8.g io.reactivex.rxjava3.core.n0<? super n1> n0Var) {
            this.f44004b = searchView;
            this.f44005c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44004b.setOnQueryTextListener(null);
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(@m8.g String str) {
            if (isDisposed()) {
                return false;
            }
            this.f44005c.onNext(new n1(this.f44004b, str, false));
            return true;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(@m8.g String str) {
            if (isDisposed()) {
                return false;
            }
            this.f44005c.onNext(new n1(this.f44004b, str, true));
            return true;
        }
    }

    public l1(@m8.g SearchView searchView) {
        this.f44003a = searchView;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super n1> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44003a, n0Var);
            this.f44003a.setOnQueryTextListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public n1 A8() {
        SearchView searchView = this.f44003a;
        CharSequence query = searchView.getQuery();
        Intrinsics.checkExpressionValueIsNotNull(query, "view.query");
        return new n1(searchView, query, false);
    }
}
