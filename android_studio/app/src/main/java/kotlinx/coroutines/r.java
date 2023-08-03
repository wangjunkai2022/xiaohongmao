package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;

/* compiled from: CancellableContinuationImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\b\u0011\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u0005B\u001f\u0012\f\u0010t\u001a\b\u0012\u0004\u0012\u00028\u00000p\u0012\u0006\u0010,\u001a\u00020&¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001e\u0010\u0010\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0082\b¢\u0006\u0004\b\u0010\u0010\u0011JB\u0010\u0017\u001a\u00020\u000e2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u00152\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0001\u0010\bJ\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\bJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJB\u0010!\u001a\u00020\u000e2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u00152\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b!\u0010\"J8\u0010$\u001a\u00020#2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u0015H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010(\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)JZ\u0010/\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010\u001f2\u0006\u0010,\u001a\u00020&2#\u0010-\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00122\b\u0010.\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b/\u00100JH\u00101\u001a\u00020\u000e2\b\u0010+\u001a\u0004\u0018\u00010\u001f2\u0006\u0010,\u001a\u00020&2%\b\u0002\u0010-\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0002¢\u0006\u0004\b1\u00102JJ\u00104\u001a\u0004\u0018\u0001032\b\u0010+\u001a\u0004\u0018\u00010\u001f2\b\u0010.\u001a\u0004\u0018\u00010\u001f2#\u0010-\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0002¢\u0006\u0004\b4\u00105J\u0019\u00107\u001a\u0002062\b\u0010+\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u000eH\u0002¢\u0006\u0004\b9\u0010\u001eJ\u000f\u0010:\u001a\u00020\u000eH\u0016¢\u0006\u0004\b:\u0010\u001eJ\u000f\u0010;\u001a\u00020\u0006H\u0001¢\u0006\u0004\b;\u0010\bJ\u0017\u0010>\u001a\n\u0018\u00010<j\u0004\u0018\u0001`=H\u0016¢\u0006\u0004\b>\u0010?J\u0011\u0010@\u001a\u0004\u0018\u00010\u001fH\u0010¢\u0006\u0004\b@\u0010AJ!\u0010C\u001a\u00020\u000e2\b\u0010B\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\n\u001a\u00020\tH\u0010¢\u0006\u0004\bC\u0010DJ\u0019\u0010E\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\bE\u0010\fJ\u0017\u0010F\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\bF\u0010GJ\u001f\u0010H\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00020#2\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\bH\u0010IJ8\u0010J\u001a\u00020\u000e2!\u0010-\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u00122\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\bJ\u0010\u0018J\u0017\u0010M\u001a\u00020\t2\u0006\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bM\u0010NJ\u0011\u0010O\u001a\u0004\u0018\u00010\u001fH\u0001¢\u0006\u0004\bO\u0010AJ \u0010R\u001a\u00020\u000e2\f\u0010Q\u001a\b\u0012\u0004\u0012\u00028\u00000PH\u0016ø\u0001\u0000¢\u0006\u0004\bR\u0010SJ<\u0010U\u001a\u00020\u000e2\u0006\u0010T\u001a\u00028\u00002#\u0010-\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0016¢\u0006\u0004\bU\u0010VJ8\u0010W\u001a\u00020\u000e2'\u0010\u0016\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e0\u0012j\u0002`\u0015H\u0016¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020\u000eH\u0000¢\u0006\u0004\bY\u0010\u001eJ#\u0010Z\u001a\u0004\u0018\u00010\u001f2\u0006\u0010T\u001a\u00028\u00002\b\u0010.\u001a\u0004\u0018\u00010\u001fH\u0016¢\u0006\u0004\bZ\u0010[JH\u0010\\\u001a\u0004\u0018\u00010\u001f2\u0006\u0010T\u001a\u00028\u00002\b\u0010.\u001a\u0004\u0018\u00010\u001f2#\u0010-\u001a\u001f\u0012\u0013\u0012\u00110\t¢\u0006\f\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\\\u0010]J\u0019\u0010_\u001a\u0004\u0018\u00010\u001f2\u0006\u0010^\u001a\u00020\tH\u0016¢\u0006\u0004\b_\u0010`J\u0017\u0010b\u001a\u00020\u000e2\u0006\u0010a\u001a\u00020\u001fH\u0016¢\u0006\u0004\bb\u0010SJ\u001b\u0010d\u001a\u00020\u000e*\u00020c2\u0006\u0010T\u001a\u00028\u0000H\u0016¢\u0006\u0004\bd\u0010eJ\u001b\u0010f\u001a\u00020\u000e*\u00020c2\u0006\u0010^\u001a\u00020\tH\u0016¢\u0006\u0004\bf\u0010gJ\u001f\u0010h\u001a\u00028\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0010¢\u0006\u0004\bh\u0010iJ\u001b\u0010j\u001a\u0004\u0018\u00010\t2\b\u0010 \u001a\u0004\u0018\u00010\u001fH\u0010¢\u0006\u0004\bj\u0010kJ\u000f\u0010m\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u000f\u0010o\u001a\u00020lH\u0014¢\u0006\u0004\bo\u0010nR \u0010t\u001a\b\u0012\u0004\u0012\u00028\u00000p8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bC\u0010q\u001a\u0004\br\u0010sR\u001a\u0010y\u001a\u00020u8\u0016X\u0096\u0004¢\u0006\f\n\u0004\br\u0010v\u001a\u0004\bw\u0010xR\u0018\u0010{\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010zR\u0014\u0010}\u001a\u00020l8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b|\u0010nR\u0016\u0010 \u001a\u0004\u0018\u00010\u001f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b~\u0010AR\u0015\u0010\u0080\u0001\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u007f\u0010\bR\u0016\u0010\u0082\u0001\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0081\u0001\u0010\bR\u0016\u0010\u0083\u0001\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0083\u0001\u0010\bR\u001f\u0010\u0086\u0001\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u0084\u0001\u0010\u0085\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0089\u0001"}, d2 = {"Lkotlinx/coroutines/r;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/f1;", "Lkotlinx/coroutines/q;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "", "G", "()Z", "", "cause", "u", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function0;", "", "block", "s", "(Lkotlin/jvm/functions/Function0;)V", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "Lkotlinx/coroutines/CompletionHandler;", "handler", "p", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)V", "R", "Lkotlinx/coroutines/l1;", "F", "()Lkotlinx/coroutines/l1;", "M", "()V", "", t.b.f83859d, "J", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V", "Lkotlinx/coroutines/o;", "H", "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/o;", "", "mode", y.b.f83919g, "(I)V", "Lkotlinx/coroutines/y2;", "proposedUpdate", "resumeMode", "onCancellation", "idempotent", "Q", "(Lkotlinx/coroutines/y2;Ljava/lang/Object;ILkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Object;", "O", "(Ljava/lang/Object;ILkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/internal/p0;", ExifInterface.LATITUDE_SOUTH, "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/internal/p0;", "", "o", "(Ljava/lang/Object;)Ljava/lang/Void;", "w", "C", "N", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "n", "()Ljava/lang/Object;", "takenState", "d", "(Ljava/lang/Object;Ljava/lang/Throwable;)V", "b", "L", "(Ljava/lang/Throwable;)V", "q", "(Lkotlinx/coroutines/o;Ljava/lang/Throwable;)V", "t", "Lkotlinx/coroutines/j2;", "parent", y.b.f83920h, "(Lkotlinx/coroutines/j2;)Ljava/lang/Throwable;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "value", "r", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "k", "(Lkotlin/jvm/functions/Function1;)V", "v", "j", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "z", "(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", h4.b.f83287e, "l", "(Ljava/lang/Throwable;)Ljava/lang/Object;", "token", "I", "Lkotlinx/coroutines/n0;", "B", "(Lkotlinx/coroutines/n0;Ljava/lang/Object;)V", "m", "(Lkotlinx/coroutines/n0;Ljava/lang/Throwable;)V", "g", "(Ljava/lang/Object;)Ljava/lang/Object;", "f", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "", "toString", "()Ljava/lang/String;", "K", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/Continuation;", "e", "()Lkotlin/coroutines/Continuation;", "delegate", "Lkotlin/coroutines/CoroutineContext;", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/l1;", "parentHandle", ExifInterface.LONGITUDE_EAST, "stateDebugRepresentation", "D", "a", "isActive", ContextChain.TAG_INFRA, "isCompleted", "isCancelled", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "<init>", "(Lkotlin/coroutines/Continuation;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public class r<T> extends f1<T> implements q<T>, CoroutineStackFrame {

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86386g = AtomicIntegerFieldUpdater.newUpdater(r.class, "_decision");

    /* renamed from: h  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86387h = AtomicReferenceFieldUpdater.newUpdater(r.class, Object.class, "_state");
    @m8.g
    private volatile /* synthetic */ int _decision;
    @m8.g
    private volatile /* synthetic */ Object _state;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Continuation<T> f86388d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final CoroutineContext f86389e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private l1 f86390f;

    /* JADX WARN: Multi-variable type inference failed */
    public r(@m8.g Continuation<? super T> continuation, int i4) {
        super(i4);
        this.f86388d = continuation;
        this.f86389e = continuation.getContext();
        this._decision = 0;
        this._state = d.f85145a;
    }

    private final String E() {
        Object D = D();
        return D instanceof y2 ? "Active" : D instanceof u ? "Cancelled" : "Completed";
    }

    private final l1 F() {
        j2 j2Var = (j2) getContext().get(j2.f86331k2);
        if (j2Var == null) {
            return null;
        }
        l1 f10 = j2.a.f(j2Var, true, false, new v(this), 2, null);
        this.f86390f = f10;
        return f10;
    }

    private final boolean G() {
        return g1.d(this.f85260c) && ((kotlinx.coroutines.internal.l) this.f86388d).u();
    }

    private final o H(Function1<? super Throwable, Unit> function1) {
        return function1 instanceof o ? (o) function1 : new g2(function1);
    }

    private final void J(Function1<? super Throwable, Unit> function1, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + function1 + ", already has " + obj).toString());
    }

    private final void M() {
        Continuation<T> continuation = this.f86388d;
        kotlinx.coroutines.internal.l lVar = continuation instanceof kotlinx.coroutines.internal.l ? (kotlinx.coroutines.internal.l) continuation : null;
        Throwable D = lVar != null ? lVar.D(this) : null;
        if (D == null) {
            return;
        }
        v();
        b(D);
    }

    private final void O(Object obj, int i4, Function1<? super Throwable, Unit> function1) {
        Object obj2;
        do {
            obj2 = this._state;
            if (obj2 instanceof y2) {
            } else {
                if (obj2 instanceof u) {
                    u uVar = (u) obj2;
                    if (uVar.c()) {
                        if (function1 == null) {
                            return;
                        }
                        t(function1, uVar.f85246a);
                        return;
                    }
                }
                o(obj);
                throw new KotlinNothingValueException();
            }
        } while (!androidx.concurrent.futures.a.a(f86387h, this, obj2, Q((y2) obj2, obj, i4, function1, null)));
        w();
        x(i4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void P(r rVar, Object obj, int i4, Function1 function1, int i10, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        rVar.O(obj, i4, function1);
    }

    private final Object Q(y2 y2Var, Object obj, int i4, Function1<? super Throwable, Unit> function1, Object obj2) {
        if (obj instanceof e0) {
            return obj;
        }
        if (g1.c(i4) || obj2 != null) {
            if (function1 != null || (((y2Var instanceof o) && !(y2Var instanceof g)) || obj2 != null)) {
                return new d0(obj, y2Var instanceof o ? (o) y2Var : null, function1, obj2, null, 16, null);
            }
            return obj;
        }
        return obj;
    }

    private final boolean R() {
        do {
            int i4 = this._decision;
            if (i4 != 0) {
                if (i4 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f86386g.compareAndSet(this, 0, 2));
        return true;
    }

    private final kotlinx.coroutines.internal.p0 S(Object obj, Object obj2, Function1<? super Throwable, Unit> function1) {
        Object obj3;
        do {
            obj3 = this._state;
            if (obj3 instanceof y2) {
            } else if ((obj3 instanceof d0) && obj2 != null && ((d0) obj3).f85149d == obj2) {
                return s.f86625d;
            } else {
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(f86387h, this, obj3, Q((y2) obj3, obj, this.f85260c, function1, obj2)));
        w();
        return s.f86625d;
    }

    private final boolean T() {
        do {
            int i4 = this._decision;
            if (i4 != 0) {
                if (i4 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f86386g.compareAndSet(this, 0, 1));
        return true;
    }

    private final Void o(Object obj) {
        throw new IllegalStateException(Intrinsics.stringPlus("Already resumed, but proposed with update ", obj).toString());
    }

    private final void p(Function1<? super Throwable, Unit> function1, Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            p0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in invokeOnCancellation handler for ", this), th2));
        }
    }

    private final void s(Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (Throwable th) {
            p0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in invokeOnCancellation handler for ", this), th));
        }
    }

    private final boolean u(Throwable th) {
        if (G()) {
            return ((kotlinx.coroutines.internal.l) this.f86388d).v(th);
        }
        return false;
    }

    private final void w() {
        if (G()) {
            return;
        }
        v();
    }

    private final void x(int i4) {
        if (R()) {
            return;
        }
        g1.a(this, i4);
    }

    @m8.h
    @PublishedApi
    public final Object A() {
        j2 j2Var;
        Object coroutine_suspended;
        boolean G = G();
        if (T()) {
            if (this.f86390f == null) {
                F();
            }
            if (G) {
                M();
            }
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return coroutine_suspended;
        }
        if (G) {
            M();
        }
        Object D = D();
        if (!(D instanceof e0)) {
            if (g1.c(this.f85260c) && (j2Var = (j2) getContext().get(j2.f86331k2)) != null && !j2Var.a()) {
                CancellationException A = j2Var.A();
                d(D, A);
                throw A;
            }
            return g(D);
        }
        throw ((e0) D).f85246a;
    }

    @Override // kotlinx.coroutines.q
    public void B(@m8.g n0 n0Var, T t9) {
        Continuation<T> continuation = this.f86388d;
        kotlinx.coroutines.internal.l lVar = continuation instanceof kotlinx.coroutines.internal.l ? (kotlinx.coroutines.internal.l) continuation : null;
        P(this, t9, (lVar != null ? lVar.f86270d : null) == n0Var ? 4 : this.f85260c, null, 4, null);
    }

    @Override // kotlinx.coroutines.q
    public void C() {
        l1 F = F();
        if (F != null && i()) {
            F.dispose();
            this.f86390f = x2.f86862a;
        }
    }

    @m8.h
    public final Object D() {
        return this._state;
    }

    @Override // kotlinx.coroutines.q
    public void I(@m8.g Object obj) {
        x(this.f85260c);
    }

    @m8.g
    protected String K() {
        return "CancellableContinuation";
    }

    public final void L(@m8.g Throwable th) {
        if (u(th)) {
            return;
        }
        b(th);
        w();
    }

    @JvmName(name = "resetStateReusable")
    public final boolean N() {
        Object obj = this._state;
        if ((obj instanceof d0) && ((d0) obj).f85149d != null) {
            v();
            return false;
        }
        this._decision = 0;
        this._state = d.f85145a;
        return true;
    }

    @Override // kotlinx.coroutines.q
    public boolean a() {
        return D() instanceof y2;
    }

    @Override // kotlinx.coroutines.q
    public boolean b(@m8.h Throwable th) {
        Object obj;
        boolean z9;
        do {
            obj = this._state;
            if (!(obj instanceof y2)) {
                return false;
            }
            z9 = obj instanceof o;
        } while (!androidx.concurrent.futures.a.a(f86387h, this, obj, new u(this, th, z9)));
        o oVar = z9 ? (o) obj : null;
        if (oVar != null) {
            q(oVar, th);
        }
        w();
        x(this.f85260c);
        return true;
    }

    @Override // kotlinx.coroutines.f1
    public void d(@m8.h Object obj, @m8.g Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (!(obj2 instanceof y2)) {
                if (obj2 instanceof e0) {
                    return;
                }
                if (obj2 instanceof d0) {
                    d0 d0Var = (d0) obj2;
                    if (!d0Var.h()) {
                        if (androidx.concurrent.futures.a.a(f86387h, this, obj2, d0.g(d0Var, null, null, null, null, th, 15, null))) {
                            d0Var.i(this, th);
                            return;
                        }
                    } else {
                        throw new IllegalStateException("Must be called at most once".toString());
                    }
                } else if (androidx.concurrent.futures.a.a(f86387h, this, obj2, new d0(obj2, null, null, null, th, 14, null))) {
                    return;
                }
            } else {
                throw new IllegalStateException("Not completed".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.f1
    @m8.g
    public final Continuation<T> e() {
        return this.f86388d;
    }

    @Override // kotlinx.coroutines.f1
    @m8.h
    public Throwable f(@m8.h Object obj) {
        Throwable f10 = super.f(obj);
        if (f10 == null) {
            return null;
        }
        e();
        return f10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.f1
    public <T> T g(@m8.h Object obj) {
        return obj instanceof d0 ? (T) ((d0) obj).f85146a : obj;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f86388d;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @m8.g
    public CoroutineContext getContext() {
        return this.f86389e;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.q
    public boolean i() {
        return !(D() instanceof y2);
    }

    @Override // kotlinx.coroutines.q
    public boolean isCancelled() {
        return D() instanceof u;
    }

    @Override // kotlinx.coroutines.q
    @m8.h
    public Object j(T t9, @m8.h Object obj) {
        return S(t9, obj, null);
    }

    @Override // kotlinx.coroutines.q
    public void k(@m8.g Function1<? super Throwable, Unit> function1) {
        o H = H(function1);
        while (true) {
            Object obj = this._state;
            if (obj instanceof d) {
                if (androidx.concurrent.futures.a.a(f86387h, this, obj, H)) {
                    return;
                }
            } else if (obj instanceof o) {
                J(function1, obj);
            } else {
                boolean z9 = obj instanceof e0;
                if (z9) {
                    e0 e0Var = (e0) obj;
                    if (!e0Var.b()) {
                        J(function1, obj);
                    }
                    if (obj instanceof u) {
                        if (!z9) {
                            e0Var = null;
                        }
                        p(function1, e0Var != null ? e0Var.f85246a : null);
                        return;
                    }
                    return;
                } else if (obj instanceof d0) {
                    d0 d0Var = (d0) obj;
                    if (d0Var.f85147b != null) {
                        J(function1, obj);
                    }
                    if (H instanceof g) {
                        return;
                    }
                    if (d0Var.h()) {
                        p(function1, d0Var.f85150e);
                        return;
                    } else {
                        if (androidx.concurrent.futures.a.a(f86387h, this, obj, d0.g(d0Var, null, H, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else if (H instanceof g) {
                    return;
                } else {
                    if (androidx.concurrent.futures.a.a(f86387h, this, obj, new d0(obj, H, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.q
    @m8.h
    public Object l(@m8.g Throwable th) {
        return S(new e0(th, false, 2, null), null, null);
    }

    @Override // kotlinx.coroutines.q
    public void m(@m8.g n0 n0Var, @m8.g Throwable th) {
        Continuation<T> continuation = this.f86388d;
        kotlinx.coroutines.internal.l lVar = continuation instanceof kotlinx.coroutines.internal.l ? (kotlinx.coroutines.internal.l) continuation : null;
        P(this, new e0(th, false, 2, null), (lVar != null ? lVar.f86270d : null) == n0Var ? 4 : this.f85260c, null, 4, null);
    }

    @Override // kotlinx.coroutines.f1
    @m8.h
    public Object n() {
        return D();
    }

    public final void q(@m8.g o oVar, @m8.h Throwable th) {
        try {
            oVar.a(th);
        } catch (Throwable th2) {
            p0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in invokeOnCancellation handler for ", this), th2));
        }
    }

    @Override // kotlinx.coroutines.q
    public void r(T t9, @m8.h Function1<? super Throwable, Unit> function1) {
        O(t9, this.f85260c, function1);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m8.g Object obj) {
        P(this, j0.c(obj, this), this.f85260c, null, 4, null);
    }

    public final void t(@m8.g Function1<? super Throwable, Unit> function1, @m8.g Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            p0.b(getContext(), new CompletionHandlerException(Intrinsics.stringPlus("Exception in resume onCancellation handler for ", this), th2));
        }
    }

    @m8.g
    public String toString() {
        return K() + '(' + v0.c(this.f86388d) + "){" + E() + "}@" + v0.b(this);
    }

    public final void v() {
        l1 l1Var = this.f86390f;
        if (l1Var == null) {
            return;
        }
        l1Var.dispose();
        this.f86390f = x2.f86862a;
    }

    @m8.g
    public Throwable y(@m8.g j2 j2Var) {
        return j2Var.A();
    }

    @Override // kotlinx.coroutines.q
    @m8.h
    public Object z(T t9, @m8.h Object obj, @m8.h Function1<? super Throwable, Unit> function1) {
        return S(t9, obj, function1);
    }
}
