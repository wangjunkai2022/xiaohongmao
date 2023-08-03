package com.jakewharton.rxbinding4.widget;

import android.view.View;
import android.widget.AdapterView;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdapterViewItemLongClickEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB'\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0007\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0018\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/h;", "Lio/reactivex/rxjava3/core/g0;", "Lcom/jakewharton/rxbinding4/widget/g;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/widget/AdapterView;", "a", "Landroid/widget/AdapterView;", "view", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/widget/AdapterView;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class h extends io.reactivex.rxjava3.core.g0<g> {

    /* renamed from: a  reason: collision with root package name */
    private final AdapterView<?> f43985a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<g, Boolean> f43986b;

    /* compiled from: AdapterViewItemLongClickEventObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00120\u0011\u0012\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b0\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ.\u0010\f\u001a\u00020\u000b2\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0014R\u0018\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00120\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R \u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b0\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/jakewharton/rxbinding4/widget/h$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/widget/AdapterView$OnItemLongClickListener;", "Landroid/widget/AdapterView;", "parent", "Landroid/view/View;", "view", "", "position", "", "id", "", "onItemLongClick", "", "a", "b", "Landroid/widget/AdapterView;", "Lio/reactivex/rxjava3/core/n0;", "Lcom/jakewharton/rxbinding4/widget/g;", "c", "Lio/reactivex/rxjava3/core/n0;", "observer", "Lkotlin/Function1;", "d", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/widget/AdapterView;Lio/reactivex/rxjava3/core/n0;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements AdapterView.OnItemLongClickListener {

        /* renamed from: b  reason: collision with root package name */
        private final AdapterView<?> f43987b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super g> f43988c;

        /* renamed from: d  reason: collision with root package name */
        private final Function1<g, Boolean> f43989d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g AdapterView<?> adapterView, @m8.g io.reactivex.rxjava3.core.n0<? super g> n0Var, @m8.g Function1<? super g, Boolean> function1) {
            this.f43987b = adapterView;
            this.f43988c = n0Var;
            this.f43989d = function1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43987b.setOnItemLongClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(@m8.g AdapterView<?> adapterView, @m8.h View view, int i4, long j4) {
            if (isDisposed()) {
                return false;
            }
            g gVar = new g(adapterView, view, i4, j4);
            try {
                if (this.f43989d.invoke(gVar).booleanValue()) {
                    this.f43988c.onNext(gVar);
                    return true;
                }
                return false;
            } catch (Exception e4) {
                this.f43988c.onError(e4);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(@m8.g AdapterView<?> adapterView, @m8.g Function1<? super g, Boolean> function1) {
        this.f43985a = adapterView;
        this.f43986b = function1;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super g> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43985a, n0Var, this.f43986b);
            n0Var.onSubscribe(aVar);
            this.f43985a.setOnItemLongClickListener(aVar);
        }
    }
}
