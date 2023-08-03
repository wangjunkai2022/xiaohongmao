package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.coroutines.m2;

/* compiled from: SafeCollector.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0010\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u001f\u001a\u00020\f¢\u0006\u0004\b/\u00100J'\u0010\n\u001a\u0004\u0018\u00010\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002J\n\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\"\u0010\u0018\u001a\u00020\t2\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0016H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u001a\u001a\u00020\u0006H\u0016J\u001b\u0010\u001b\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\f8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010%\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010 R\u001e\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0014\u0010.\u001a\u00020\f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlin/coroutines/Continuation;", "", "uCont", "value", "", "n", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "currentContext", "previousContext", "h", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "Lkotlinx/coroutines/flow/internal/l;", h4.b.f83287e, "o", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "Lkotlin/Result;", "result", "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collector", "Lkotlinx/coroutines/flow/j;", "collectContext", "Lkotlin/coroutines/CoroutineContext;", "", "collectContextSize", "I", "a", "lastEmissionContext", "b", "Lkotlin/coroutines/Continuation;", "completion", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class SafeCollector<T> extends ContinuationImpl implements kotlinx.coroutines.flow.j<T>, CoroutineStackFrame {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private CoroutineContext f85897a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Continuation<? super Unit> f85898b;
    @JvmField
    @m8.g
    public final CoroutineContext collectContext;
    @JvmField
    public final int collectContextSize;
    @JvmField
    @m8.g
    public final kotlinx.coroutines.flow.j<T> collector;

    /* compiled from: SafeCollector.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "count", "Lkotlin/coroutines/CoroutineContext$Element;", "<anonymous parameter 1>", "a", "(ILkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Integer;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class a extends Lambda implements Function2<Integer, CoroutineContext.Element, Integer> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f85899a = new a();

        a() {
            super(2);
        }

        @m8.g
        public final Integer a(int i4, @m8.g CoroutineContext.Element element) {
            return Integer.valueOf(i4 + 1);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, CoroutineContext.Element element) {
            return a(num.intValue(), element);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g CoroutineContext coroutineContext) {
        super(q.f86028a, EmptyCoroutineContext.INSTANCE);
        this.collector = jVar;
        this.collectContext = coroutineContext;
        this.collectContextSize = ((Number) coroutineContext.fold(0, a.f85899a)).intValue();
    }

    private final void h(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, T t9) {
        if (coroutineContext2 instanceof l) {
            o((l) coroutineContext2, t9);
        }
        SafeCollector_commonKt.a(this, coroutineContext);
    }

    private final Object n(Continuation<? super Unit> continuation, T t9) {
        Object coroutine_suspended;
        CoroutineContext context = continuation.getContext();
        m2.z(context);
        CoroutineContext coroutineContext = this.f85897a;
        if (coroutineContext != context) {
            h(context, coroutineContext, t9);
            this.f85897a = context;
        }
        this.f85898b = continuation;
        Object invoke = t.a().invoke(this.collector, t9, this);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (!Intrinsics.areEqual(invoke, coroutine_suspended)) {
            this.f85898b = null;
        }
        return invoke;
    }

    private final void o(l lVar, Object obj) {
        String trimIndent;
        trimIndent = StringsKt__IndentKt.trimIndent("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + lVar.f86021a + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ");
        throw new IllegalStateException(trimIndent.toString());
    }

    @Override // kotlinx.coroutines.flow.j
    @m8.h
    public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        try {
            Object n9 = n(continuation, t9);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (n9 == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return n9 == coroutine_suspended2 ? n9 : Unit.INSTANCE;
        } catch (Throwable th) {
            this.f85897a = new l(th, continuation.getContext());
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public CoroutineStackFrame getCallerFrame() {
        Continuation<? super Unit> continuation = this.f85898b;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.Continuation
    @m8.g
    public CoroutineContext getContext() {
        CoroutineContext coroutineContext = this.f85897a;
        return coroutineContext == null ? EmptyCoroutineContext.INSTANCE : coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.g
    public Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(obj);
        if (m73exceptionOrNullimpl != null) {
            this.f85897a = new l(m73exceptionOrNullimpl, getContext());
        }
        Continuation<? super Unit> continuation = this.f85898b;
        if (continuation != null) {
            continuation.resumeWith(obj);
        }
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return coroutine_suspended;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }
}
