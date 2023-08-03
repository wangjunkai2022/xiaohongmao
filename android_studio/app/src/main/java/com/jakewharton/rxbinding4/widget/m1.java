package com.jakewharton.rxbinding4.widget;

import android.widget.SearchView;
import kotlin.Metadata;

/* compiled from: SearchViewQueryTextChangesObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/m1;", "Lcom/jakewharton/rxbinding4/a;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/SearchView;", "a", "Landroid/widget/SearchView;", "view", "kotlin.jvm.PlatformType", "D8", "()Ljava/lang/CharSequence;", "initialValue", "<init>", "(Landroid/widget/SearchView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class m1 extends com.jakewharton.rxbinding4.a<CharSequence> {

    /* renamed from: a  reason: collision with root package name */
    private final SearchView f44006a;

    /* compiled from: SearchViewQueryTextChangesObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J\b\u0010\n\u001a\u00020\tH\u0014R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/m1$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/SearchView$OnQueryTextListener;", "", "s", "", "onQueryTextChange", s2.d.f93273b, "onQueryTextSubmit", "", "a", "Landroid/widget/SearchView;", "b", "Landroid/widget/SearchView;", "view", "Lio/reactivex/rxjava3/core/n0;", "", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/SearchView;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements SearchView.OnQueryTextListener {

        /* renamed from: b  reason: collision with root package name */
        private final SearchView f44007b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super CharSequence> f44008c;

        public a(@m8.g SearchView searchView, @m8.g io.reactivex.rxjava3.core.n0<? super CharSequence> n0Var) {
            this.f44007b = searchView;
            this.f44008c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44007b.setOnQueryTextListener(null);
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(@m8.g String str) {
            if (isDisposed()) {
                return false;
            }
            this.f44008c.onNext(str);
            return true;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(@m8.g String str) {
            return false;
        }
    }

    public m1(@m8.g SearchView searchView) {
        this.f44006a = searchView;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super CharSequence> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44006a, n0Var);
            this.f44006a.setOnQueryTextListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    /* renamed from: D8 */
    public CharSequence A8() {
        return this.f44006a.getQuery();
    }
}
