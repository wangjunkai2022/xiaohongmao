package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.y0;

/* compiled from: CompletableDeferred.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H&¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/z;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/y0;", "value", "", "L", "(Ljava/lang/Object;)Z", "", h4.b.f83287e, "h", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface z<T> extends y0<T> {

    /* compiled from: CompletableDeferred.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <T, R> R b(@m8.g z<T> zVar, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) y0.a.b(zVar, r9, function2);
        }

        @m8.h
        public static <T, E extends CoroutineContext.Element> E c(@m8.g z<T> zVar, @m8.g CoroutineContext.Key<E> key) {
            return (E) y0.a.c(zVar, key);
        }

        @m8.g
        public static <T> CoroutineContext d(@m8.g z<T> zVar, @m8.g CoroutineContext.Key<?> key) {
            return y0.a.d(zVar, key);
        }

        @m8.g
        public static <T> CoroutineContext e(@m8.g z<T> zVar, @m8.g CoroutineContext coroutineContext) {
            return y0.a.e(zVar, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @m8.g
        public static <T> j2 f(@m8.g z<T> zVar, @m8.g j2 j2Var) {
            return y0.a.f(zVar, j2Var);
        }
    }

    boolean L(T t9);

    boolean h(@m8.g Throwable th);
}
