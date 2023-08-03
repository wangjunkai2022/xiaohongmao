package com.jakewharton.rxbinding4.widget;

import android.widget.CompoundButton;
import kotlin.Metadata;

/* compiled from: CompoundButtonCheckedChangeObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/p;", "Lcom/jakewharton/rxbinding4/a;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/CompoundButton;", "a", "Landroid/widget/CompoundButton;", "view", "D8", "()Ljava/lang/Boolean;", "initialValue", "<init>", "(Landroid/widget/CompoundButton;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class p extends com.jakewharton.rxbinding4.a<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    private final CompoundButton f44018a;

    /* compiled from: CompoundButtonCheckedChangeObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u000e\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\r¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0014R\u0014\u0010\f\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/p$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "Landroid/widget/CompoundButton;", "compoundButton", "", "isChecked", "", "onCheckedChanged", "a", "b", "Landroid/widget/CompoundButton;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/CompoundButton;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final CompoundButton f44019b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Boolean> f44020c;

        public a(@m8.g CompoundButton compoundButton, @m8.g io.reactivex.rxjava3.core.n0<? super Boolean> n0Var) {
            this.f44019b = compoundButton;
            this.f44020c = n0Var;
        }

        @Override // io.reactivex.rxjava3.android.b
        protected void a() {
            this.f44019b.setOnCheckedChangeListener(null);
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(@m8.g CompoundButton compoundButton, boolean z9) {
            if (isDisposed()) {
                return;
            }
            this.f44020c.onNext(Boolean.valueOf(z9));
        }
    }

    public p(@m8.g CompoundButton compoundButton) {
        this.f44018a = compoundButton;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super Boolean> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44018a, n0Var);
            n0Var.onSubscribe(aVar);
            this.f44018a.setOnCheckedChangeListener(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public Boolean A8() {
        return Boolean.valueOf(this.f44018a.isChecked());
    }
}
