package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

/* compiled from: CoroutineDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0006\b&\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001\u001cB\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0017J\u001c\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\f\u001a\u00060\nj\u0002`\u000bH&J\u001c\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0017J \u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\"\u0004\b\u0000\u0010\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011J\u0012\u0010\u0014\u001a\u00020\r2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u0011J\u0011\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0000H\u0087\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0016¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "isDispatchNeeded", "", "parallelism", "limitedParallelism", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "dispatchYield", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "continuation", "interceptContinuation", "releaseInterceptedContinuation", "other", "plus", "", "toString", "<init>", "()V", "Key", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class n0 extends AbstractCoroutineContextElement implements ContinuationInterceptor {
    @m8.g
    public static final a Key = new a(null);

    /* compiled from: CoroutineDispatcher.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/n0$a;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlinx/coroutines/n0;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    @ExperimentalStdlibApi
    /* loaded from: classes4.dex */
    public static final class a extends AbstractCoroutineContextKey<ContinuationInterceptor, n0> {

        /* compiled from: CoroutineDispatcher.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlin/coroutines/CoroutineContext$Element;", "it", "Lkotlinx/coroutines/n0;", "a", "(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/n0;"}, k = 3, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.n0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0753a extends Lambda implements Function1<CoroutineContext.Element, n0> {

            /* renamed from: a  reason: collision with root package name */
            public static final C0753a f86346a = new C0753a();

            C0753a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @m8.h
            /* renamed from: a */
            public final n0 invoke(@m8.g CoroutineContext.Element element) {
                if (element instanceof n0) {
                    return (n0) element;
                }
                return null;
            }
        }

        private a() {
            super(ContinuationInterceptor.Key, C0753a.f86346a);
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public n0() {
        super(ContinuationInterceptor.Key);
    }

    public abstract void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable);

    @e2
    public void dispatchYield(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        dispatch(coroutineContext, runnable);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m8.h
    public <E extends CoroutineContext.Element> E get(@m8.g CoroutineContext.Key<E> key) {
        return (E) ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    @m8.g
    public final <T> Continuation<T> interceptContinuation(@m8.g Continuation<? super T> continuation) {
        return new kotlinx.coroutines.internal.l(this, continuation);
    }

    public boolean isDispatchNeeded(@m8.g CoroutineContext coroutineContext) {
        return true;
    }

    @y1
    @m8.g
    public n0 limitedParallelism(int i4) {
        kotlinx.coroutines.internal.s.a(i4);
        return new kotlinx.coroutines.internal.r(this, i4);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m8.g
    public CoroutineContext minusKey(@m8.g CoroutineContext.Key<?> key) {
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left.")
    @m8.g
    public final n0 plus(@m8.g n0 n0Var) {
        return n0Var;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(@m8.g Continuation<?> continuation) {
        ((kotlinx.coroutines.internal.l) continuation).w();
    }

    @m8.g
    public String toString() {
        return v0.a(this) + '@' + v0.b(this);
    }
}
