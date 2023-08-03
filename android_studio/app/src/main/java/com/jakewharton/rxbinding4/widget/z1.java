package com.jakewharton.rxbinding4.widget;

import android.view.KeyEvent;
import android.widget.TextView;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextViewEditorActionEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB#\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/z1;", "Lio/reactivex/rxjava3/core/g0;", "Lcom/jakewharton/rxbinding4/widget/y1;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "view", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class z1 extends io.reactivex.rxjava3.core.g0<y1> {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f44072a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<y1, Boolean> f44073b;

    /* compiled from: TextViewEditorActionEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u000e\u0010\u0014\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00110\u0010\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ\"\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0014R\u0014\u0010\u000f\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u0014\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/z1$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/TextView$OnEditorActionListener;", "Landroid/widget/TextView;", "textView", "", "actionId", "Landroid/view/KeyEvent;", "keyEvent", "", "onEditorAction", "", "a", "b", "Landroid/widget/TextView;", "view", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/y1;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "Lkotlin/Function1;", "d", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/widget/TextView;Lio/reactivex/rxjava3/core/n0;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements TextView.OnEditorActionListener {

        /* renamed from: b  reason: collision with root package name */
        private final TextView f44074b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super y1> f44075c;

        /* renamed from: d  reason: collision with root package name */
        private final Function1<y1, Boolean> f44076d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g TextView textView, @m8.g io.reactivex.rxjava3.core.n0<? super y1> n0Var, @m8.g Function1<? super y1, Boolean> function1) {
            this.f44074b = textView;
            this.f44075c = n0Var;
            this.f44076d = function1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f44074b.setOnEditorActionListener(null);
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(@m8.g TextView textView, int i4, @m8.h KeyEvent keyEvent) {
            y1 y1Var = new y1(this.f44074b, i4, keyEvent);
            try {
                if (isDisposed() || !this.f44076d.invoke(y1Var).booleanValue()) {
                    return false;
                }
                this.f44075c.onNext(y1Var);
                return true;
            } catch (Exception e4) {
                this.f44075c.onError(e4);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public z1(@m8.g TextView textView, @m8.g Function1<? super y1, Boolean> function1) {
        this.f44072a = textView;
        this.f44073b = function1;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super y1> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f44072a, n0Var, this.f44073b);
            n0Var.onSubscribe(aVar);
            this.f44072a.setOnEditorActionListener(aVar);
        }
    }
}
