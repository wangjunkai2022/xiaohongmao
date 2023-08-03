package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.j2;

/* compiled from: Deferred.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002J\u0013\u0010\u0003\u001a\u00028\u0000H¦@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00028\u0000H'¢\u0006\u0004\b\u0005\u0010\u0006J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H'R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\t8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/y0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/j2;", "D", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "p", "()Ljava/lang/Object;", "", "s", "Lkotlinx/coroutines/selects/d;", ExifInterface.LONGITUDE_WEST, "()Lkotlinx/coroutines/selects/d;", "onAwait", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface y0<T> extends j2 {

    /* compiled from: Deferred.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <T, R> R b(@m8.g y0<? extends T> y0Var, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) j2.a.d(y0Var, r9, function2);
        }

        @m8.h
        public static <T, E extends CoroutineContext.Element> E c(@m8.g y0<? extends T> y0Var, @m8.g CoroutineContext.Key<E> key) {
            return (E) j2.a.e(y0Var, key);
        }

        @m8.g
        public static <T> CoroutineContext d(@m8.g y0<? extends T> y0Var, @m8.g CoroutineContext.Key<?> key) {
            return j2.a.g(y0Var, key);
        }

        @m8.g
        public static <T> CoroutineContext e(@m8.g y0<? extends T> y0Var, @m8.g CoroutineContext coroutineContext) {
            return j2.a.h(y0Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @m8.g
        public static <T> j2 f(@m8.g y0<? extends T> y0Var, @m8.g j2 j2Var) {
            return j2.a.i(y0Var, j2Var);
        }
    }

    @m8.h
    Object D(@m8.g Continuation<? super T> continuation);

    @m8.g
    kotlinx.coroutines.selects.d<T> W();

    @y1
    T p();

    @m8.h
    @y1
    Throwable s();
}
