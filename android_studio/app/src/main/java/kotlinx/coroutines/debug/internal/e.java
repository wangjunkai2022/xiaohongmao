package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* compiled from: DebugCoroutineInfoImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0000\u0018\u00002\u00020\u0001B#\u0012\b\u0010)\u001a\u0004\u0018\u00010\u001c\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u001a\u001a\u00020\u0018¢\u0006\u0004\b3\u00104J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J'\u0010\t\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u00030\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0082Pø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J#\u0010\u000f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u000eH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0011\u001a\u00020\fH\u0016R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0019R\u001c\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010\u001eR\u0013\u0010)\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010(R\u0017\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028F¢\u0006\u0006\u001a\u0004\b#\u0010*R\u0011\u0010\r\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b,\u0010-R(\u00102\u001a\u0004\u0018\u00010\u00062\b\u0010.\u001a\u0004\u0018\u00010\u00068@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b&\u0010/\"\u0004\b0\u00101\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {"Lkotlinx/coroutines/debug/internal/e;", "", "", "Ljava/lang/StackTraceElement;", "b", "Lkotlin/sequences/SequenceScope;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", TypedValues.Attributes.S_FRAME, "", "k", "(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "", t.b.f83859d, "Lkotlin/coroutines/Continuation;", "j", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V", "toString", "Lkotlinx/coroutines/debug/internal/k;", "a", "Lkotlinx/coroutines/debug/internal/k;", "d", "()Lkotlinx/coroutines/debug/internal/k;", "creationStackBottom", "", "J", "sequenceNumber", "Ljava/lang/ref/WeakReference;", "Lkotlin/coroutines/CoroutineContext;", "c", "Ljava/lang/ref/WeakReference;", "_context", "Ljava/lang/String;", "_state", "Ljava/lang/Thread;", "e", "Ljava/lang/Thread;", "lastObservedThread", "f", "_lastObservedFrame", "()Lkotlin/coroutines/CoroutineContext;", "context", "()Ljava/util/List;", "creationStackTrace", "g", "()Ljava/lang/String;", "value", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", ContextChain.TAG_INFRA, "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "lastObservedFrame", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/debug/internal/k;J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final k f85215a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final long f85216b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<CoroutineContext> f85217c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private String f85218d = f.f85231a;
    @m8.h
    @JvmField

    /* renamed from: e  reason: collision with root package name */
    public Thread f85219e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<CoroutineStackFrame> f85220f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DebugCoroutineInfoImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlin/sequences/SequenceScope;", "Ljava/lang/StackTraceElement;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$creationStackTrace$1", f = "DebugCoroutineInfoImpl.kt", i = {}, l = {75}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends RestrictedSuspendLambda implements Function2<SequenceScope<? super StackTraceElement>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85221a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f85222b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ k f85224d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(k kVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f85224d = kVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f85224d, continuation);
            aVar.f85222b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g SequenceScope<? super StackTraceElement> sequenceScope, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85221a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                e eVar = e.this;
                CoroutineStackFrame callerFrame = this.f85224d.getCallerFrame();
                this.f85221a = 1;
                if (eVar.k((SequenceScope) this.f85222b, callerFrame, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DebugCoroutineInfoImpl.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl", f = "DebugCoroutineInfoImpl.kt", i = {}, l = {80}, m = "yieldFrames", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85225a;

        /* renamed from: b  reason: collision with root package name */
        Object f85226b;

        /* renamed from: c  reason: collision with root package name */
        Object f85227c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f85228d;

        /* renamed from: f  reason: collision with root package name */
        int f85230f;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85228d = obj;
            this.f85230f |= Integer.MIN_VALUE;
            return e.this.k(null, null, this);
        }
    }

    public e(@m8.h CoroutineContext coroutineContext, @m8.h k kVar, long j4) {
        this.f85215a = kVar;
        this.f85216b = j4;
        this.f85217c = new WeakReference<>(coroutineContext);
    }

    private final List<StackTraceElement> b() {
        Sequence sequence;
        List<StackTraceElement> list;
        List<StackTraceElement> emptyList;
        k kVar = this.f85215a;
        if (kVar == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        sequence = SequencesKt__SequenceBuilderKt.sequence(new a(kVar, null));
        list = SequencesKt___SequencesKt.toList(sequence);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x004a -> B:26:0x0062). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x005c -> B:25:0x005f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object k(kotlin.sequences.SequenceScope<? super java.lang.StackTraceElement> r6, kotlin.coroutines.jvm.internal.CoroutineStackFrame r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.debug.internal.e.b
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.debug.internal.e$b r0 = (kotlinx.coroutines.debug.internal.e.b) r0
            int r1 = r0.f85230f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85230f = r1
            goto L18
        L13:
            kotlinx.coroutines.debug.internal.e$b r0 = new kotlinx.coroutines.debug.internal.e$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f85228d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85230f
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r6 = r0.f85227c
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r6 = (kotlin.coroutines.jvm.internal.CoroutineStackFrame) r6
            java.lang.Object r7 = r0.f85226b
            kotlin.sequences.SequenceScope r7 = (kotlin.sequences.SequenceScope) r7
            java.lang.Object r2 = r0.f85225a
            kotlinx.coroutines.debug.internal.e r2 = (kotlinx.coroutines.debug.internal.e) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5f
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r5
        L41:
            if (r7 != 0) goto L46
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L46:
            java.lang.StackTraceElement r8 = r7.getStackTraceElement()
            if (r8 != 0) goto L4d
            goto L62
        L4d:
            r0.f85225a = r2
            r0.f85226b = r6
            r0.f85227c = r7
            r0.f85230f = r3
            java.lang.Object r8 = r6.yield(r8, r0)
            if (r8 != r1) goto L5c
            return r1
        L5c:
            r4 = r7
            r7 = r6
            r6 = r4
        L5f:
            r4 = r7
            r7 = r6
            r6 = r4
        L62:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r7 = r7.getCallerFrame()
            if (r7 == 0) goto L69
            goto L41
        L69:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.e.k(kotlin.sequences.SequenceScope, kotlin.coroutines.jvm.internal.CoroutineStackFrame, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public final CoroutineContext c() {
        return this.f85217c.get();
    }

    @m8.h
    public final k d() {
        return this.f85215a;
    }

    @m8.g
    public final List<StackTraceElement> e() {
        return b();
    }

    @m8.h
    public final CoroutineStackFrame f() {
        WeakReference<CoroutineStackFrame> weakReference = this.f85220f;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @m8.g
    public final String g() {
        return this.f85218d;
    }

    @m8.g
    public final List<StackTraceElement> h() {
        List<StackTraceElement> emptyList;
        CoroutineStackFrame f10 = f();
        if (f10 == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList arrayList = new ArrayList();
        while (f10 != null) {
            StackTraceElement stackTraceElement = f10.getStackTraceElement();
            if (stackTraceElement != null) {
                arrayList.add(stackTraceElement);
            }
            f10 = f10.getCallerFrame();
        }
        return arrayList;
    }

    public final void i(@m8.h CoroutineStackFrame coroutineStackFrame) {
        this.f85220f = coroutineStackFrame == null ? null : new WeakReference<>(coroutineStackFrame);
    }

    public final void j(@m8.g String str, @m8.g Continuation<?> continuation) {
        if (Intrinsics.areEqual(this.f85218d, str) && Intrinsics.areEqual(str, f.f85233c) && f() != null) {
            return;
        }
        this.f85218d = str;
        i(continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null);
        this.f85219e = Intrinsics.areEqual(str, f.f85232b) ? Thread.currentThread() : null;
    }

    @m8.g
    public String toString() {
        return "DebugCoroutineInfo(state=" + g() + ",context=" + c() + ')';
    }
}
