package com.jakewharton.rxbinding4.widget;

import android.widget.RatingBar;
import kotlin.Metadata;

/* compiled from: RatingBarRatingChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/u;", "Lcom/jakewharton/rxbinding4/a;", "Lcom/jakewharton/rxbinding4/widget/t;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/RatingBar;", "a", "Landroid/widget/RatingBar;", "view", "D8", "()Lcom/jakewharton/rxbinding4/widget/t;", "initialValue", "<init>", "(Landroid/widget/RatingBar;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class u extends com.jakewharton.rxbinding4.a<t> {

    /* renamed from: a  reason: collision with root package name */
    private final RatingBar f44048a;

    /* compiled from: RatingBarRatingChangeEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00100\u000f¢\u0006\u0004\b\u0014\u0010\u0015J \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u000b\u001a\u00020\tH\u0014R\u0014\u0010\u000e\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001c\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00100\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/u$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/RatingBar$OnRatingBarChangeListener;", "Landroid/widget/RatingBar;", "ratingBar", "", "rating", "", "fromUser", "", "onRatingChanged", "a", "b", "Landroid/widget/RatingBar;", "view", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/t;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/RatingBar;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements RatingBar.OnRatingBarChangeListener {

        /* renamed from: b  reason: collision with root package name */
        private final RatingBar f44049b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super t> f44050c;

        public a(@m8.g RatingBar ratingBar, @m8.g io.reactivex.rxjava3.core.n0<? super t> n0Var) {
            this.f44049b = ratingBar;
            this.f44050c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44049b.setOnRatingBarChangeListener(null);
        }

        @Override // android.widget.RatingBar.OnRatingBarChangeListener
        public void onRatingChanged(@m8.g RatingBar ratingBar, float f10, boolean z9) {
            if (isDisposed()) {
                return;
            }
            this.f44050c.onNext(new t(ratingBar, f10, z9));
        }
    }

    public u(@m8.g RatingBar ratingBar) {
        this.f44048a = ratingBar;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super t> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44048a, n0Var);
            this.f44048a.setOnRatingBarChangeListener(aVar);
            n0Var.onSubscribe(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public t A8() {
        RatingBar ratingBar = this.f44048a;
        return new t(ratingBar, ratingBar.getRating(), false);
    }
}
