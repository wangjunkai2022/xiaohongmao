package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.j2;

/* compiled from: Job.kt */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H'¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/y;", "Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/a3;", "parentJob", "", ExifInterface.LONGITUDE_EAST, "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public interface y extends j2 {

    /* compiled from: Job.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        public static <R> R b(@m8.g y yVar, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) j2.a.d(yVar, r9, function2);
        }

        @m8.h
        public static <E extends CoroutineContext.Element> E c(@m8.g y yVar, @m8.g CoroutineContext.Key<E> key) {
            return (E) j2.a.e(yVar, key);
        }

        @m8.g
        public static CoroutineContext d(@m8.g y yVar, @m8.g CoroutineContext.Key<?> key) {
            return j2.a.g(yVar, key);
        }

        @m8.g
        public static CoroutineContext e(@m8.g y yVar, @m8.g CoroutineContext coroutineContext) {
            return j2.a.h(yVar, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @m8.g
        public static j2 f(@m8.g y yVar, @m8.g j2 j2Var) {
            return j2.a.i(yVar, j2Var);
        }
    }

    @e2
    void E(@m8.g a3 a3Var);
}
