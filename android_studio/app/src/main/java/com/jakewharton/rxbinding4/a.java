package com.jakewharton.rxbinding4;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;
import kotlin.Metadata;
import m8.g;

/* compiled from: InitialValueObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u000eB\u0007¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0003H\u0014J\u0018\u0010\u0007\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0003H$J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002R\u0014\u0010\u000b\u001a\u00028\u00008$X¤\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/jakewharton/rxbinding4/a;", ExifInterface.GPS_DIRECTION_TRUE, "Lio/reactivex/rxjava3/core/g0;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "C8", "B8", "A8", "()Ljava/lang/Object;", "initialValue", "<init>", "()V", "a", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public abstract class a<T> extends g0<T> {

    /* compiled from: InitialValueObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0002H\u0014¨\u0006\b"}, d2 = {"Lcom/jakewharton/rxbinding4/a$a;", "Lio/reactivex/rxjava3/core/g0;", "Lio/reactivex/rxjava3/core/n0;", "observer", "", "d6", "<init>", "(Lcom/jakewharton/rxbinding4/a;)V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
    /* renamed from: com.jakewharton.rxbinding4.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    private final class C0376a extends g0<T> {
        public C0376a() {
        }

        @Override // io.reactivex.rxjava3.core.g0
        protected void d6(@g n0<? super T> n0Var) {
            a.this.C8(n0Var);
        }
    }

    protected abstract T A8();

    @g
    public final g0<T> B8() {
        return new C0376a();
    }

    protected abstract void C8(@g n0<? super T> n0Var);

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@g n0<? super T> n0Var) {
        C8(n0Var);
        n0Var.onNext(A8());
    }
}
