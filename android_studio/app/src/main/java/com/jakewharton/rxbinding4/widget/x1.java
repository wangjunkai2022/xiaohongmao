package com.jakewharton.rxbinding4.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextViewBeforeTextChangeEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/x1;", "Lcom/jakewharton/rxbinding4/a;", "Lcom/jakewharton/rxbinding4/widget/w1;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "C8", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "view", "D8", "()Lcom/jakewharton/rxbinding4/widget/w1;", "initialValue", "<init>", "(Landroid/widget/TextView;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class x1 extends com.jakewharton.rxbinding4.a<w1> {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f44066a;

    /* compiled from: TextViewBeforeTextChangeEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u000e\u0010\u0019\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00160\u0015¢\u0006\u0004\b\u001a\u0010\u001bJ(\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J(\u0010\r\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u000eH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0014R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0019\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00160\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/x1$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/text/TextWatcher;", "", "s", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "", "beforeTextChanged", "charSequence", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "Landroid/text/Editable;", "afterTextChanged", "a", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "view", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/w1;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/widget/TextView;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements TextWatcher {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f44067b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super w1> f44068c;

        public a(@m8.g TextView textView, @m8.g io.reactivex.rxjava3.core.n0<? super w1> n0Var) {
            this.f44067b = textView;
            this.f44068c = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44067b.removeTextChangedListener(this);
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.g Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.g CharSequence charSequence, int i4, int i10, int i11) {
            if (isDisposed()) {
                return;
            }
            this.f44068c.onNext(new w1(this.f44067b, charSequence, i4, i10, i11));
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.g CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    public x1(@m8.g TextView textView) {
        this.f44066a = textView;
    }

    @Override // com.jakewharton.rxbinding4.a
    protected void C8(@m8.g io.reactivex.rxjava3.core.n0<? super w1> n0Var) {
        a aVar = new a(this.f44066a, n0Var);
        n0Var.onSubscribe(aVar);
        this.f44066a.addTextChangedListener(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.jakewharton.rxbinding4.a
    @m8.g
    /* renamed from: D8 */
    public w1 A8() {
        TextView textView = this.f44066a;
        CharSequence text = textView.getText();
        Intrinsics.checkExpressionValueIsNotNull(text, "view.text");
        return new w1(textView, text, 0, 0, 0);
    }
}
