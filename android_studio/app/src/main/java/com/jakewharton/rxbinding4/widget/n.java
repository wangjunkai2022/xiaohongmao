package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.AdapterView;
import kotlin.Metadata;

/* compiled from: AdapterViewSelectionObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u0013\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/n;", "Lcom/jakewharton/rxbinding4/a;", "Lcom/jakewharton/rxbinding4/widget/m;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/AdapterView;", "a", "Landroid/widget/AdapterView;", "view", "D8", "()Lcom/jakewharton/rxbinding4/widget/m;", "initialValue", "<init>", "(Landroid/widget/AdapterView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class n extends com.jakewharton.rxbinding4.a<m> {

    /* renamed from: a  reason: collision with root package name */
    private final AdapterView<?> f44009a;

    /* compiled from: AdapterViewSelectionObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00120\u0011¢\u0006\u0004\b\u0016\u0010\u0017J.\u0010\f\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\u0014\u0010\r\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016J\b\u0010\u000e\u001a\u00020\u000bH\u0014R\u0018\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/n$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/AdapterView$OnItemSelectedListener;", "Landroid/widget/AdapterView;", "parent", "Landroid/view/View;", "view", "", "position", "", "id", "", "onItemSelected", "onNothingSelected", "a", "b", "Landroid/widget/AdapterView;", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/m;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/AdapterView;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements AdapterView.OnItemSelectedListener {

        /* renamed from: b  reason: collision with root package name */
        private final AdapterView<?> f44010b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super m> f44011c;

        public a(@m8.g AdapterView<?> adapterView, @m8.g io.reactivex.rxjava3.core.n0<? super m> n0Var) {
            this.f44010b = adapterView;
            this.f44011c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44010b.setOnItemSelectedListener(null);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
            if (isDisposed()) {
                return;
            }
            this.f44011c.onNext(new j(adapterView, view, i4, j4));
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(@m8.g AdapterView<?> adapterView) {
            if (isDisposed()) {
                return;
            }
            this.f44011c.onNext(new l(adapterView));
        }
    }

    public n(@m8.g AdapterView<?> adapterView) {
        this.f44009a = adapterView;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super m> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44009a, n0Var);
            this.f44009a.setOnItemSelectedListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public m A8() {
        int selectedItemPosition = this.f44009a.getSelectedItemPosition();
        if (selectedItemPosition == -1) {
            return new l(this.f44009a);
        }
        return new j(this.f44009a, this.f44009a.getSelectedView(), selectedItemPosition, this.f44009a.getSelectedItemId());
    }
}
