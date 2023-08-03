package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: CoroutineContext.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u001a\u0014\u0010\u0003\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0007\u001a\f\u0010\u0007\u001a\u00020\u0006*\u00020\u0001H\u0002\u001a \u0010\u000b\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u0006H\u0002\u001a6\u0010\u0011\u001a\u00028\u0000\"\u0004\b\u0000\u0010\f2\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0080\b¢\u0006\u0004\b\u0011\u0010\u0012\u001a:\u0010\u0015\u001a\u00028\u0000\"\u0004\b\u0000\u0010\f2\n\u0010\u0014\u001a\u0006\u0012\u0002\b\u00030\u00132\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0080\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a(\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0018*\u0006\u0012\u0002\b\u00030\u00132\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0017\u001a\u0004\u0018\u00010\rH\u0000\u001a\u0013\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0018*\u00020\u001aH\u0080\u0010\"\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u001d\"\u001a\u0010!\u001a\u0004\u0018\u00010\u001c*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/CoroutineContext;", "context", "e", "addedContext", "d", "", "c", "originalContext", "appendContext", "isNewCoroutine", "a", ExifInterface.GPS_DIRECTION_TRUE, "", "countOrElement", "Lkotlin/Function0;", "block", ContextChain.TAG_INFRA, "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "Lkotlin/coroutines/Continuation;", "continuation", "h", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "oldValue", "Lkotlinx/coroutines/w3;", "g", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "f", "", "Ljava/lang/String;", "DEBUG_THREAD_NAME_SEPARATOR", "b", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/String;", "coroutineName", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class m0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final String f86339a = " @";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineContext.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/coroutines/CoroutineContext;", "result", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a extends Lambda implements Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f86340a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        public final CoroutineContext invoke(@m8.g CoroutineContext coroutineContext, @m8.g CoroutineContext.Element element) {
            if (element instanceof k0) {
                return coroutineContext.plus(((k0) element).J());
            }
            return coroutineContext.plus(element);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineContext.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "Lkotlin/coroutines/CoroutineContext;", "result", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class b extends Lambda implements Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<CoroutineContext> f86341a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f86342b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Ref.ObjectRef<CoroutineContext> objectRef, boolean z9) {
            super(2);
            this.f86341a = objectRef;
            this.f86342b = z9;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [T, kotlin.coroutines.CoroutineContext] */
        @Override // kotlin.jvm.functions.Function2
        @m8.g
        public final CoroutineContext invoke(@m8.g CoroutineContext coroutineContext, @m8.g CoroutineContext.Element element) {
            if (element instanceof k0) {
                CoroutineContext.Element element2 = this.f86341a.element.get(element.getKey());
                if (element2 == null) {
                    k0 k0Var = (k0) element;
                    if (this.f86342b) {
                        k0Var = k0Var.J();
                    }
                    return coroutineContext.plus(k0Var);
                }
                Ref.ObjectRef<CoroutineContext> objectRef = this.f86341a;
                objectRef.element = objectRef.element.minusKey(element.getKey());
                return coroutineContext.plus(((k0) element).q(element2));
            }
            return coroutineContext.plus(element);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutineContext.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "result", "Lkotlin/coroutines/CoroutineContext$Element;", "it", "a", "(ZLkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class c extends Lambda implements Function2<Boolean, CoroutineContext.Element, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f86343a = new c();

        c() {
            super(2);
        }

        @m8.g
        public final Boolean a(boolean z9, @m8.g CoroutineContext.Element element) {
            return Boolean.valueOf(z9 || (element instanceof k0));
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool, CoroutineContext.Element element) {
            return a(bool.booleanValue(), element);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    private static final CoroutineContext a(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, boolean z9) {
        boolean c10 = c(coroutineContext);
        boolean c11 = c(coroutineContext2);
        if (!c10 && !c11) {
            return coroutineContext.plus(coroutineContext2);
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new b(objectRef, z9));
        if (c11) {
            objectRef.element = ((CoroutineContext) objectRef.element).fold(emptyCoroutineContext, a.f86340a);
        }
        return coroutineContext3.plus((CoroutineContext) objectRef.element);
    }

    @m8.h
    public static final String b(@m8.g CoroutineContext coroutineContext) {
        return null;
    }

    private static final boolean c(CoroutineContext coroutineContext) {
        return ((Boolean) coroutineContext.fold(Boolean.FALSE, c.f86343a)).booleanValue();
    }

    @m8.g
    @e2
    public static final CoroutineContext d(@m8.g CoroutineContext coroutineContext, @m8.g CoroutineContext coroutineContext2) {
        return !c(coroutineContext2) ? coroutineContext.plus(coroutineContext2) : a(coroutineContext, coroutineContext2, false);
    }

    @y1
    @m8.g
    public static final CoroutineContext e(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext) {
        CoroutineContext a10 = a(s0Var.getCoroutineContext(), coroutineContext, true);
        return (a10 == i1.a() || a10.get(ContinuationInterceptor.Key) != null) ? a10 : a10.plus(i1.a());
    }

    @m8.h
    public static final w3<?> f(@m8.g CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof e1) && (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) != null) {
            if (coroutineStackFrame instanceof w3) {
                return (w3) coroutineStackFrame;
            }
        }
        return null;
    }

    @m8.h
    public static final w3<?> g(@m8.g Continuation<?> continuation, @m8.g CoroutineContext coroutineContext, @m8.h Object obj) {
        if (continuation instanceof CoroutineStackFrame) {
            if (coroutineContext.get(x3.f86863a) != null) {
                w3<?> f10 = f((CoroutineStackFrame) continuation);
                if (f10 != null) {
                    f10.r1(coroutineContext, obj);
                }
                return f10;
            }
            return null;
        }
        return null;
    }

    public static final <T> T h(@m8.g Continuation<?> continuation, @m8.h Object obj, @m8.g Function0<? extends T> function0) {
        CoroutineContext context = continuation.getContext();
        Object c10 = kotlinx.coroutines.internal.u0.c(context, obj);
        w3<?> g4 = c10 != kotlinx.coroutines.internal.u0.f86295a ? g(continuation, context, c10) : null;
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            if (g4 == null || g4.q1()) {
                kotlinx.coroutines.internal.u0.a(context, c10);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    public static final <T> T i(@m8.g CoroutineContext coroutineContext, @m8.h Object obj, @m8.g Function0<? extends T> function0) {
        Object c10 = kotlinx.coroutines.internal.u0.c(coroutineContext, obj);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            kotlinx.coroutines.internal.u0.a(coroutineContext, c10);
            InlineMarker.finallyEnd(1);
        }
    }
}
