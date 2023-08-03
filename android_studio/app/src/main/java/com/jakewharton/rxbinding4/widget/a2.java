package com.jakewharton.rxbinding4.widget;

import android.view.KeyEvent;
import android.widget.TextView;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* compiled from: TextViewEditorActionObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB#\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/a2;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "view", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class a2 extends io.reactivex.rxjava3.core.g0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f43940a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<Integer, Boolean> f43941b;

    /* compiled from: TextViewEditorActionObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u0010\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\"\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0014R\u0014\u0010\u000f\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0013\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/a2$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/TextView$OnEditorActionListener;", "Landroid/widget/TextView;", "textView", "", "actionId", "Landroid/view/KeyEvent;", "keyEvent", "", "onEditorAction", "", "a", "b", "Landroid/widget/TextView;", "view", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "Lkotlin/Function1;", "d", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/widget/TextView;Lio/reactivex/rxjava3/core/n0;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements TextView.OnEditorActionListener {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f43942b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Integer> f43943c;

        /* renamed from: d  reason: collision with root package name */
        private final Function1<Integer, Boolean> f43944d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g TextView textView, @m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var, @m8.g Function1<? super Integer, Boolean> function1) {
            this.f43942b = textView;
            this.f43943c = n0Var;
            this.f43944d = function1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43942b.setOnEditorActionListener(null);
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(@m8.g TextView textView, int i4, @m8.h KeyEvent keyEvent) {
            try {
                if (isDisposed() || !this.f43944d.invoke(Integer.valueOf(i4)).booleanValue()) {
                    return false;
                }
                this.f43943c.onNext(Integer.valueOf(i4));
                return true;
            } catch (Exception e4) {
                this.f43943c.onError(e4);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a2(@m8.g TextView textView, @m8.g Function1<? super Integer, Boolean> function1) {
        this.f43940a = textView;
        this.f43941b = function1;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43940a, n0Var, this.f43941b);
            n0Var.onSubscribe(aVar);
            this.f43940a.setOnEditorActionListener(aVar);
        }
    }
}
