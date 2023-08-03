package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.AdapterView;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: AdapterViewItemLongClickObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB!\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0007\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/i;", "Lio/reactivex/rxjava3/core/g0;", "", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/AdapterView;", "a", "Landroid/widget/AdapterView;", "view", "Lkotlin/Function0;", "", "b", "Lkotlin/jvm/functions/Function0;", f.b.f83682d, "<init>", "(Landroid/widget/AdapterView;Lkotlin/jvm/functions/Function0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
final class i extends io.reactivex.rxjava3.core.g0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final AdapterView<?> f43990a;

    /* renamed from: b  reason: collision with root package name */
    private final Function0<Boolean> f43991b;

    /* compiled from: AdapterViewItemLongClickObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u000e\u0010\u0014\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u0011\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0015¢\u0006\u0004\b\u0019\u0010\u001aJ.\u0010\f\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0014R\u0018\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0014\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00070\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/i$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/AdapterView$OnItemLongClickListener;", "Landroid/widget/AdapterView;", "parent", "Landroid/view/View;", "view", "", "position", "", "id", "", "onItemLongClick", "", "a", "b", "Landroid/widget/AdapterView;", "Lio/reactivex/rxjava3/core/n0;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "Lkotlin/Function0;", "d", "Lkotlin/jvm/functions/Function0;", f.b.f83682d, "<init>", "(Landroid/widget/AdapterView;Lio/reactivex/rxjava3/core/n0;Lkotlin/jvm/functions/Function0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements AdapterView.OnItemLongClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final AdapterView<?> f43992b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super Integer> f43993c;

        /* renamed from: d  reason: collision with root package name */
        private final Function0<Boolean> f43994d;

        public a(@m8.g AdapterView<?> adapterView, @m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var, @m8.g Function0<Boolean> function0) {
            this.f43992b = adapterView;
            this.f43993c = n0Var;
            this.f43994d = function0;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43992b.setOnItemLongClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (this.f43994d.invoke().booleanValue()) {
                    this.f43993c.onNext(Integer.valueOf(i4));
                    return true;
                }
                return false;
            } catch (Exception e4) {
                this.f43993c.onError(e4);
                dispose();
                return false;
            }
        }
    }

    public i(@m8.g AdapterView<?> adapterView, @m8.g Function0<Boolean> function0) {
        this.f43990a = adapterView;
        this.f43991b = function0;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super Integer> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43990a, n0Var, this.f43991b);
            n0Var.onSubscribe(aVar);
            this.f43990a.setOnItemLongClickListener(aVar);
        }
    }
}
