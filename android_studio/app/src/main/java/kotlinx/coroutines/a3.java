package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.j2;

/* compiled from: Job.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\f\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H'¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/a3;", "Lkotlinx/coroutines/j2;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "M", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public interface a3 extends j2 {

    /* compiled from: Job.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <R> R b(@m8.g a3 a3Var, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) j2.a.d(a3Var, r9, function2);
        }

        @m8.h
        public static <E extends CoroutineContext.Element> E c(@m8.g a3 a3Var, @m8.g CoroutineContext.Key<E> key) {
            return (E) j2.a.e(a3Var, key);
        }

        @m8.g
        public static CoroutineContext d(@m8.g a3 a3Var, @m8.g CoroutineContext.Key<?> key) {
            return j2.a.g(a3Var, key);
        }

        @m8.g
        public static CoroutineContext e(@m8.g a3 a3Var, @m8.g CoroutineContext coroutineContext) {
            return j2.a.h(a3Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @m8.g
        public static j2 f(@m8.g a3 a3Var, @m8.g j2 j2Var) {
            return j2.a.i(a3Var, j2Var);
        }
    }

    @m8.g
    @e2
    CancellationException M();
}
