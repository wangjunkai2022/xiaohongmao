package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.y;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;

/* compiled from: Job.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u0000 -2\u00020\u0001:\u0001\fJ\f\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H'J\b\u0010\u0006\u001a\u00020\u0005H&J\u001a\u0010\t\u001a\u00020\b2\u0010\b\u0002\u0010\u0007\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u0003H&J\b\u0010\n\u001a\u00020\bH\u0017J\u0014\u0010\f\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u000bH'J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH'J\u0013\u0010\u0011\u001a\u00020\bH¦@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J1\u0010\u0019\u001a\u00020\u00182'\u0010\u0017\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0013j\u0002`\u0016H&JE\u0010\u001c\u001a\u00020\u00182\b\b\u0002\u0010\u001a\u001a\u00020\u00052\b\b\u0002\u0010\u001b\u001a\u00020\u00052'\u0010\u0017\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\u0014\u0012\b\b\u0015\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0013j\u0002`\u0016H'J\u0011\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0000H\u0097\u0002R\u0014\u0010!\u001a\u00020\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010#\u001a\u00020\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010 R\u0014\u0010$\u001a\u00020\u00058&X¦\u0004¢\u0006\u0006\u001a\u0004\b$\u0010 R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00000%8&X¦\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8&X¦\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, d2 = {"Lkotlinx/coroutines/j2;", "Lkotlin/coroutines/CoroutineContext$Element;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "cause", "", "d", "cancel", "", "b", "Lkotlinx/coroutines/y;", "child", "Lkotlinx/coroutines/w;", "n0", "X", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "Lkotlinx/coroutines/l1;", "H", "onCancelling", "invokeImmediately", y.b.f83920h, "other", "G", "a", "()Z", "isActive", ContextChain.TAG_INFRA, "isCompleted", "isCancelled", "Lkotlin/sequences/Sequence;", "getChildren", "()Lkotlin/sequences/Sequence;", y.b.f83923k, "Lkotlinx/coroutines/selects/c;", "h0", "()Lkotlinx/coroutines/selects/c;", "onJoin", "k2", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public interface j2 extends CoroutineContext.Element {
    @m8.g

    /* renamed from: k2  reason: collision with root package name */
    public static final b f86331k2 = b.f86332a;

    /* compiled from: Job.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
        public static /* synthetic */ void a(j2 j2Var) {
            j2Var.d(null);
        }

        public static /* synthetic */ void b(j2 j2Var, CancellationException cancellationException, int i4, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i4 & 1) != 0) {
                cancellationException = null;
            }
            j2Var.d(cancellationException);
        }

        public static /* synthetic */ boolean c(j2 j2Var, Throwable th, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    th = null;
                }
                return j2Var.b(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static <R> R d(@m8.g j2 j2Var, R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(j2Var, r9, function2);
        }

        @m8.h
        public static <E extends CoroutineContext.Element> E e(@m8.g j2 j2Var, @m8.g CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(j2Var, key);
        }

        public static /* synthetic */ l1 f(j2 j2Var, boolean z9, boolean z10, Function1 function1, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    z9 = false;
                }
                if ((i4 & 2) != 0) {
                    z10 = true;
                }
                return j2Var.y(z9, z10, function1);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }

        @m8.g
        public static CoroutineContext g(@m8.g j2 j2Var, @m8.g CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(j2Var, key);
        }

        @m8.g
        public static CoroutineContext h(@m8.g j2 j2Var, @m8.g CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(j2Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @m8.g
        public static j2 i(@m8.g j2 j2Var, @m8.g j2 j2Var2) {
            return j2Var2;
        }
    }

    /* compiled from: Job.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/j2$b;", "Lkotlin/coroutines/CoroutineContext$Key;", "Lkotlinx/coroutines/j2;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements CoroutineContext.Key<j2> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f86332a = new b();

        private b() {
        }
    }

    @m8.g
    @e2
    CancellationException A();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
    @m8.g
    j2 G(@m8.g j2 j2Var);

    @m8.g
    l1 H(@m8.g Function1<? super Throwable, Unit> function1);

    @m8.h
    Object X(@m8.g Continuation<? super Unit> continuation);

    boolean a();

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ boolean b(Throwable th);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ void cancel();

    void d(@m8.h CancellationException cancellationException);

    @m8.g
    Sequence<j2> getChildren();

    @m8.g
    kotlinx.coroutines.selects.c h0();

    boolean i();

    boolean isCancelled();

    @m8.g
    @e2
    w n0(@m8.g y yVar);

    boolean start();

    @m8.g
    @e2
    l1 y(boolean z9, boolean z10, @m8.g Function1<? super Throwable, Unit> function1);
}
