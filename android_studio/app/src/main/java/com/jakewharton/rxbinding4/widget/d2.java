package com.jakewharton.rxbinding4.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import kotlin.Metadata;

/* compiled from: TextViewTextChangesObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/d2;", "Lcom/jakewharton/rxbinding4/a;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "view", "kotlin.jvm.PlatformType", "D8", "()Ljava/lang/CharSequence;", "initialValue", "<init>", "(Landroid/widget/TextView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class d2 extends com.jakewharton.rxbinding4.a<CharSequence> {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f43966a;

    /* compiled from: TextViewTextChangesObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u000e\u0010\u0017\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\u0014¢\u0006\u0004\b\u0018\u0010\u0019J(\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J(\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\tH\u0014R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0017\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00030\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/d2$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/text/TextWatcher;", "", "s", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "", "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "Landroid/text/Editable;", "afterTextChanged", "a", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/TextView;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements TextWatcher {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f43967b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super CharSequence> f43968c;

        public a(@m8.g TextView textView, @m8.g io.reactivex.rxjava3.core.n0<? super CharSequence> n0Var) {
            this.f43967b = textView;
            this.f43968c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43967b.removeTextChangedListener(this);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.g Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.g CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.g CharSequence charSequence, int i4, int i10, int i11) {
            if (isDisposed()) {
                return;
            }
            this.f43968c.onNext(charSequence);
        }
    }

    public d2(@m8.g TextView textView) {
        this.f43966a = textView;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super CharSequence> n0Var) {
        a aVar = new a(this.f43966a, n0Var);
        n0Var.onSubscribe(aVar);
        this.f43966a.addTextChangedListener(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    /* renamed from: D8 */
    public CharSequence A8() {
        return this.f43966a.getText();
    }
}
