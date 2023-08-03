package kotlinx.coroutines;

import io.sentry.h4;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.j2;

/* compiled from: CompletableJob.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/c0;", "Lkotlinx/coroutines/j2;", "", "complete", "", h4.b.f83287e, "h", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface c0 extends j2 {

    /* compiled from: CompletableJob.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <R> R b(@m8.g c0 c0Var, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) j2.a.d(c0Var, r9, function2);
        }

        @m8.h
        public static <E extends CoroutineContext.Element> E c(@m8.g c0 c0Var, @m8.g CoroutineContext.Key<E> key) {
            return (E) j2.a.e(c0Var, key);
        }

        @m8.g
        public static CoroutineContext d(@m8.g c0 c0Var, @m8.g CoroutineContext.Key<?> key) {
            return j2.a.g(c0Var, key);
        }

        @m8.g
        public static CoroutineContext e(@m8.g c0 c0Var, @m8.g CoroutineContext coroutineContext) {
            return j2.a.h(c0Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @m8.g
        public static j2 f(@m8.g c0 c0Var, @m8.g j2 j2Var) {
            return j2.a.i(c0Var, j2Var);
        }
    }

    boolean complete();

    boolean h(@m8.g Throwable th);
}
