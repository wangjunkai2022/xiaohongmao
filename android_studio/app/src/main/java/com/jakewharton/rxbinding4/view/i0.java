package com.jakewharton.rxbinding4.view;

import android.view.DragEvent;
import android.view.View;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewDragObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\bB#\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lcom/jakewharton/rxbinding4/view/i0;", "Lio/reactivex/rxjava3/core/g0;", "Landroid/view/DragEvent;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "Landroid/view/View;", "a", "Landroid/view/View;", "view", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class i0 extends io.reactivex.rxjava3.core.g0<DragEvent> {

    /* renamed from: a  reason: collision with root package name */
    private final View f43868a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1<DragEvent, Boolean> f43869b;

    /* compiled from: ViewDragObservable.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u000e\u0012\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u0012¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\n\u001a\u00020\tH\u0014R\u0014\u0010\r\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR \u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00070\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0015\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00050\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/jakewharton/rxbinding4/view/i0$a;", "Lio/reactivex/rxjava3/android/b;", "Landroid/view/View$OnDragListener;", "Landroid/view/View;", "v", "Landroid/view/DragEvent;", "event", "", "onDrag", "", "a", "b", "Landroid/view/View;", "view", "Lkotlin/Function1;", "c", "Lkotlin/jvm/functions/Function1;", f.b.f83682d, "Lio/reactivex/rxjava3/core/n0;", "d", "Lio/reactivex/rxjava3/core/n0;", "observer", "<init>", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/n0;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    private static final class a extends io.reactivex.rxjava3.android.b implements View.OnDragListener {

        /* renamed from: b  reason: collision with root package name */
        private final View f43870b;

        /* renamed from: c  reason: collision with root package name */
        private final Function1<DragEvent, Boolean> f43871c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.rxjava3.core.n0<? super DragEvent> f43872d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g View view, @m8.g Function1<? super DragEvent, Boolean> function1, @m8.g io.reactivex.rxjava3.core.n0<? super DragEvent> n0Var) {
            this.f43870b = view;
            this.f43871c = function1;
            this.f43872d = n0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.android.b
        public void a() {
            this.f43870b.setOnDragListener(null);
        }

        @Override // android.view.View.OnDragListener
        public boolean onDrag(@m8.g View view, @m8.g DragEvent dragEvent) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (this.f43871c.invoke(dragEvent).booleanValue()) {
                    this.f43872d.onNext(dragEvent);
                    return true;
                }
                return false;
            } catch (Exception e4) {
                this.f43872d.onError(e4);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i0(@m8.g View view, @m8.g Function1<? super DragEvent, Boolean> function1) {
        this.f43868a = view;
        this.f43869b = function1;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@m8.g io.reactivex.rxjava3.core.n0<? super DragEvent> n0Var) {
        if (q4.b.a(n0Var)) {
            a aVar = new a(this.f43868a, this.f43869b, n0Var);
            n0Var.onSubscribe(aVar);
            this.f43868a.setOnDragListener(aVar);
        }
    }
}
