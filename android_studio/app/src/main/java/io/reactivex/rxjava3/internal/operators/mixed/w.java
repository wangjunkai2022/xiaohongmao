package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.v0;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.operators.maybe.p1;
import io.reactivex.rxjava3.internal.operators.single.b1;
import java.util.Objects;

/* compiled from: ScalarXMapZHelper.java */
/* loaded from: classes4.dex */
final class w {
    private w() {
        throw new IllegalStateException("No instances!");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> boolean a(Object source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, io.reactivex.rxjava3.core.d observer) {
        if (source instanceof q7.s) {
            io.reactivex.rxjava3.core.g gVar = null;
            try {
                Object obj = (Object) ((q7.s) source).get();
                if (obj != 0) {
                    io.reactivex.rxjava3.core.g apply = mapper.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                    gVar = apply;
                }
                if (gVar == null) {
                    EmptyDisposable.complete(observer);
                } else {
                    gVar.d(observer);
                }
                return true;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R> boolean b(Object source, q7.o<? super T, ? extends b0<? extends R>> mapper, n0<? super R> observer) {
        if (source instanceof q7.s) {
            b0<? extends R> b0Var = null;
            try {
                Object obj = (Object) ((q7.s) source).get();
                if (obj != 0) {
                    b0<? extends R> apply = mapper.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                    b0Var = apply;
                }
                if (b0Var == null) {
                    EmptyDisposable.complete(observer);
                } else {
                    b0Var.b(p1.A8(observer));
                }
                return true;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, R> boolean c(Object source, q7.o<? super T, ? extends v0<? extends R>> mapper, n0<? super R> observer) {
        if (source instanceof q7.s) {
            v0<? extends R> v0Var = null;
            try {
                Object obj = (Object) ((q7.s) source).get();
                if (obj != 0) {
                    v0<? extends R> apply = mapper.apply(obj);
                    Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                    v0Var = apply;
                }
                if (v0Var == null) {
                    EmptyDisposable.complete(observer);
                } else {
                    v0Var.d(b1.A8(observer));
                }
                return true;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return true;
            }
        }
        return false;
    }
}
