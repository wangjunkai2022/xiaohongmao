package kotlinx.coroutines.selects;

import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import io.sentry.protocol.y;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.e0;
import kotlinx.coroutines.internal.h0;
import kotlinx.coroutines.internal.v;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.k2;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.s;
import kotlinx.coroutines.selects.a;

/* compiled from: Select.kt */
@Metadata(bv = {}, d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\r\b\u0001\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\u00060\u0006j\u0002`\u0007:\u0004[\\6FB\u0015\u0012\f\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\bY\u0010ZJ.\u0010\r\u001a\u00020\u000b2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\bH\u0082\b¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\n\u0018\u00010\u0012j\u0004\u0018\u0001`\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J \u0010\u0018\u001a\u00020\u000b2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\tH\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001aH\u0001¢\u0006\u0004\b!\u0010\u001dJ\u0017\u0010$\u001a\u00020\u000b2\u0006\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u001b\u0010+\u001a\u0004\u0018\u00010\t2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J\u0019\u0010/\u001a\u0004\u0018\u00010\t2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00102\u001a\u000201H\u0016¢\u0006\u0004\b2\u00103J5\u00106\u001a\u00020\u000b*\u0002042\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t05H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b6\u00107JG\u0010;\u001a\u00020\u000b\"\u0004\b\u0001\u00108*\b\u0012\u0004\u0012\u00028\u0001092\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0:H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b;\u0010<J[\u0010@\u001a\u00020\u000b\"\u0004\b\u0001\u0010=\"\u0004\b\u0002\u00108*\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020>2\u0006\u0010?\u001a\u00028\u00012\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t0:H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ8\u0010D\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020B2\u001c\u0010\f\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t05H\u0016ø\u0001\u0000¢\u0006\u0004\bD\u0010ER\u001a\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR(\u0010L\u001a\u0004\u0018\u00010\"2\b\u0010\n\u001a\u0004\u0018\u00010\"8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\bI\u0010J\"\u0004\bK\u0010%R\u001c\u0010O\u001a\n\u0018\u00010\u0006j\u0004\u0018\u0001`\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bM\u0010NR\u0014\u0010S\u001a\u00020P8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010RR\u001a\u0010V\u001a\b\u0012\u0004\u0012\u00028\u00000\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0014\u0010X\u001a\u00020&8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bW\u0010(\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006]"}, d2 = {"Lkotlinx/coroutines/selects/b;", "R", "Lkotlinx/coroutines/internal/v;", "Lkotlinx/coroutines/selects/a;", "Lkotlinx/coroutines/selects/f;", "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "Lkotlin/Function0;", "", "value", "", "block", "m0", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "C", "()V", "l0", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", "result", "resumeWith", "(Ljava/lang/Object;)V", "", h4.b.f83287e, "v", "(Ljava/lang/Throwable;)V", "o0", "()Ljava/lang/Object;", "e", "p0", "Lkotlinx/coroutines/l1;", "handle", "p", "(Lkotlinx/coroutines/l1;)V", "", "t", "()Z", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "q", "(Lkotlinx/coroutines/internal/x$d;)Ljava/lang/Object;", "Lkotlinx/coroutines/internal/b;", "desc", "w", "(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/selects/c;", "Lkotlin/Function1;", "c", "(Lkotlinx/coroutines/selects/c;Lkotlin/jvm/functions/Function1;)V", "Q", "Lkotlinx/coroutines/selects/d;", "Lkotlin/Function2;", y.b.f83920h, "(Lkotlinx/coroutines/selects/d;Lkotlin/jvm/functions/Function2;)V", "P", "Lkotlinx/coroutines/selects/e;", com.alipay.sdk.authjs.a.f6841l, "g", "(Lkotlinx/coroutines/selects/e;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "timeMillis", "n", "(JLkotlin/jvm/functions/Function1;)V", "d", "Lkotlin/coroutines/Continuation;", "uCont", "n0", "()Lkotlinx/coroutines/l1;", "q0", "parentHandle", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "u", "()Lkotlin/coroutines/Continuation;", "completion", "h", "isSelected", "<init>", "(Lkotlin/coroutines/Continuation;)V", "a", "b", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public final class b<R> extends v implements kotlinx.coroutines.selects.a<R>, f<R>, Continuation<R>, CoroutineStackFrame {

    /* renamed from: e  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f86710e = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_state");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86711f = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_result");
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Continuation<R> f86712d;
    @m8.g
    volatile /* synthetic */ Object _state = g.f();
    @m8.g
    private volatile /* synthetic */ Object _result = g.c();
    @m8.g
    private volatile /* synthetic */ Object _parentHandle = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\b\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u001b\u0012\n\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u001a\u0010\u001bJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0002J\u0014\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\n\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016R\u0018\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0019\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/selects/b$a;", "Lkotlinx/coroutines/internal/d;", "", "k", "", "l", "failure", "j", "affected", ContextChain.TAG_INFRA, "d", "", "toString", "Lkotlinx/coroutines/selects/b;", "b", "Lkotlinx/coroutines/selects/b;", "impl", "Lkotlinx/coroutines/internal/b;", "c", "Lkotlinx/coroutines/internal/b;", "desc", "", "J", "g", "()J", "opSequence", "<init>", "(Lkotlinx/coroutines/selects/b;Lkotlinx/coroutines/internal/b;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a extends kotlinx.coroutines.internal.d<Object> {
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final b<?> f86713b;
        @JvmField
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        public final kotlinx.coroutines.internal.b f86714c;

        /* renamed from: d  reason: collision with root package name */
        private final long f86715d = g.b().a();

        public a(@m8.g b<?> bVar, @m8.g kotlinx.coroutines.internal.b bVar2) {
            this.f86713b = bVar;
            this.f86714c = bVar2;
            bVar2.d(this);
        }

        private final void j(Object obj) {
            boolean z9 = obj == null;
            if (androidx.concurrent.futures.a.a(b.f86710e, this.f86713b, this, z9 ? null : g.f()) && z9) {
                this.f86713b.l0();
            }
        }

        private final Object k() {
            b<?> bVar = this.f86713b;
            while (true) {
                Object obj = bVar._state;
                if (obj == this) {
                    return null;
                }
                if (obj instanceof h0) {
                    ((h0) obj).c(this.f86713b);
                } else if (obj == g.f()) {
                    if (androidx.concurrent.futures.a.a(b.f86710e, this.f86713b, g.f(), this)) {
                        return null;
                    }
                } else {
                    return g.d();
                }
            }
        }

        private final void l() {
            androidx.concurrent.futures.a.a(b.f86710e, this.f86713b, this, g.f());
        }

        @Override // kotlinx.coroutines.internal.d
        public void d(@m8.h Object obj, @m8.h Object obj2) {
            j(obj2);
            this.f86714c.a(this, obj2);
        }

        @Override // kotlinx.coroutines.internal.d
        public long g() {
            return this.f86715d;
        }

        @Override // kotlinx.coroutines.internal.d
        @m8.h
        public Object i(@m8.h Object obj) {
            Object k10;
            if (obj != null || (k10 = k()) == null) {
                try {
                    return this.f86714c.c(this);
                } catch (Throwable th) {
                    if (obj == null) {
                        l();
                    }
                    throw th;
                }
            }
            return k10;
        }

        @Override // kotlinx.coroutines.internal.h0
        @m8.g
        public String toString() {
            return "AtomicSelectOp(sequence=" + g() + ')';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/selects/b$b;", "Lkotlinx/coroutines/internal/x;", "Lkotlinx/coroutines/l1;", "d", "Lkotlinx/coroutines/l1;", "handle", "<init>", "(Lkotlinx/coroutines/l1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* renamed from: kotlinx.coroutines.selects.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0765b extends x {
        @JvmField
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        public final l1 f86716d;

        public C0765b(@m8.g l1 l1Var) {
            this.f86716d = l1Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\rJ\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0018\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/selects/b$c;", "Lkotlinx/coroutines/internal/h0;", "", "affected", "c", "Lkotlinx/coroutines/internal/x$d;", "a", "Lkotlinx/coroutines/internal/x$d;", "otherOp", "Lkotlinx/coroutines/internal/d;", "()Lkotlinx/coroutines/internal/d;", "atomicOp", "<init>", "(Lkotlinx/coroutines/internal/x$d;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class c extends h0 {
        @JvmField
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public final x.d f86717a;

        public c(@m8.g x.d dVar) {
            this.f86717a = dVar;
        }

        @Override // kotlinx.coroutines.internal.h0
        @m8.g
        public kotlinx.coroutines.internal.d<?> a() {
            return this.f86717a.a();
        }

        @Override // kotlinx.coroutines.internal.h0
        @m8.h
        public Object c(@m8.h Object obj) {
            Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectBuilderImpl<*>");
            b bVar = (b) obj;
            this.f86717a.d();
            Object e4 = this.f86717a.a().e(null);
            androidx.concurrent.futures.a.a(b.f86710e, bVar, this, e4 == null ? this.f86717a.f86321c : g.f());
            return e4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Select.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/selects/b$d;", "Lkotlinx/coroutines/k2;", "", "cause", "", "g0", "<init>", "(Lkotlinx/coroutines/selects/b;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class d extends k2 {
        public d() {
        }

        @Override // kotlinx.coroutines.g0
        public void g0(@m8.h Throwable th) {
            if (b.this.t()) {
                b.this.v(h0().A());
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            g0(th);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Runnable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"", "run", "()V", "kotlinx/coroutines/f3$a", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class e implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1 f86720b;

        public e(Function1 function1) {
            this.f86720b = function1;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.t()) {
                z7.a.d(this.f86720b, b.this.u());
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@m8.g Continuation<? super R> continuation) {
        this.f86712d = continuation;
    }

    private final void C() {
        j2 j2Var = (j2) getContext().get(j2.f86331k2);
        if (j2Var == null) {
            return;
        }
        l1 f10 = j2.a.f(j2Var, true, false, new d(), 2, null);
        q0(f10);
        if (h()) {
            f10.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l0() {
        l1 n02 = n0();
        if (n02 != null) {
            n02.dispose();
        }
        for (x xVar = (x) R(); !Intrinsics.areEqual(xVar, this); xVar = xVar.S()) {
            if (xVar instanceof C0765b) {
                ((C0765b) xVar).f86716d.dispose();
            }
        }
    }

    private final void m0(Function0<? extends Object> function0, Function0<Unit> function02) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        while (true) {
            Object obj = this._result;
            if (obj == g.c()) {
                if (androidx.concurrent.futures.a.a(f86711f, this, g.c(), function0.invoke())) {
                    return;
                }
            } else {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj != coroutine_suspended) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86711f;
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, coroutine_suspended2, g.a())) {
                    function02.invoke();
                    return;
                }
            }
        }
    }

    private final l1 n0() {
        return (l1) this._parentHandle;
    }

    private final void q0(l1 l1Var) {
        this._parentHandle = l1Var;
    }

    @Override // kotlinx.coroutines.selects.a
    public void c(@m8.g kotlinx.coroutines.selects.c cVar, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1) {
        cVar.f(this, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void g(@m8.g kotlinx.coroutines.selects.e<? super P, ? extends Q> eVar, P p9, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        eVar.n(this, p9, function2);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public CoroutineStackFrame getCallerFrame() {
        Continuation<R> continuation = this.f86712d;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @m8.g
    public CoroutineContext getContext() {
        return this.f86712d.getContext();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.selects.f
    public boolean h() {
        while (true) {
            Object obj = this._state;
            if (obj == g.f()) {
                return false;
            }
            if (!(obj instanceof h0)) {
                return true;
            }
            ((h0) obj).c(this);
        }
    }

    @Override // kotlinx.coroutines.selects.a
    public void n(long j4, @m8.g Function1<? super Continuation<? super R>, ? extends Object> function1) {
        if (j4 <= 0) {
            if (t()) {
                z7.b.c(function1, u());
                return;
            }
            return;
        }
        p(b1.d(getContext()).I(j4, new e(function1), getContext()));
    }

    @m8.h
    @PublishedApi
    public final Object o0() {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        if (!h()) {
            C();
        }
        Object obj = this._result;
        if (obj == g.c()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86711f;
            Object c10 = g.c();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, c10, coroutine_suspended)) {
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return coroutine_suspended2;
            }
            obj = this._result;
        }
        if (obj != g.a()) {
            if (obj instanceof e0) {
                throw ((e0) obj).f85246a;
            }
            return obj;
        }
        throw new IllegalStateException("Already resumed");
    }

    @Override // kotlinx.coroutines.selects.f
    public void p(@m8.g l1 l1Var) {
        C0765b c0765b = new C0765b(l1Var);
        if (!h()) {
            F(c0765b);
            if (!h()) {
                return;
            }
        }
        l1Var.dispose();
    }

    @PublishedApi
    public final void p0(@m8.g Throwable th) {
        if (t()) {
            Result.Companion companion = Result.Companion;
            resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
        } else if (th instanceof CancellationException) {
        } else {
            Object o02 = o0();
            if ((o02 instanceof e0) && ((e0) o02).f85246a == th) {
                return;
            }
            p0.b(getContext(), th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        l0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        return kotlinx.coroutines.s.f86625d;
     */
    @Override // kotlinx.coroutines.selects.f
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object q(@m8.h kotlinx.coroutines.internal.x.d r4) {
        /*
            r3 = this;
        L0:
            java.lang.Object r0 = r3._state
            java.lang.Object r1 = kotlinx.coroutines.selects.g.f()
            r2 = 0
            if (r0 != r1) goto L37
            if (r4 != 0) goto L18
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.selects.b.f86710e
            java.lang.Object r1 = kotlinx.coroutines.selects.g.f()
            boolean r0 = androidx.concurrent.futures.a.a(r0, r3, r1, r2)
            if (r0 != 0) goto L31
            goto L0
        L18:
            kotlinx.coroutines.selects.b$c r0 = new kotlinx.coroutines.selects.b$c
            r0.<init>(r4)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.selects.b.f86710e
            java.lang.Object r2 = kotlinx.coroutines.selects.g.f()
            boolean r1 = androidx.concurrent.futures.a.a(r1, r3, r2, r0)
            if (r1 != 0) goto L2a
            goto L0
        L2a:
            java.lang.Object r4 = r0.c(r3)
            if (r4 == 0) goto L31
            return r4
        L31:
            r3.l0()
            kotlinx.coroutines.internal.p0 r4 = kotlinx.coroutines.s.f86625d
            return r4
        L37:
            boolean r1 = r0 instanceof kotlinx.coroutines.internal.h0
            if (r1 == 0) goto L6b
            if (r4 == 0) goto L65
            kotlinx.coroutines.internal.d r1 = r4.a()
            boolean r2 = r1 instanceof kotlinx.coroutines.selects.b.a
            if (r2 == 0) goto L59
            r2 = r1
            kotlinx.coroutines.selects.b$a r2 = (kotlinx.coroutines.selects.b.a) r2
            kotlinx.coroutines.selects.b<?> r2 = r2.f86713b
            if (r2 == r3) goto L4d
            goto L59
        L4d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot use matching select clauses on the same object"
            java.lang.String r0 = r0.toString()
            r4.<init>(r0)
            throw r4
        L59:
            r2 = r0
            kotlinx.coroutines.internal.h0 r2 = (kotlinx.coroutines.internal.h0) r2
            boolean r1 = r1.b(r2)
            if (r1 == 0) goto L65
            java.lang.Object r4 = kotlinx.coroutines.internal.c.f86247b
            return r4
        L65:
            kotlinx.coroutines.internal.h0 r0 = (kotlinx.coroutines.internal.h0) r0
            r0.c(r3)
            goto L0
        L6b:
            if (r4 != 0) goto L6e
            return r2
        L6e:
            kotlinx.coroutines.internal.x$a r4 = r4.f86321c
            if (r0 != r4) goto L75
            kotlinx.coroutines.internal.p0 r4 = kotlinx.coroutines.s.f86625d
            return r4
        L75:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.b.q(kotlinx.coroutines.internal.x$d):java.lang.Object");
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@m8.g Object obj) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        while (true) {
            Object obj2 = this._result;
            if (obj2 == g.c()) {
                if (androidx.concurrent.futures.a.a(f86711f, this, g.c(), j0.d(obj, null, 1, null))) {
                    return;
                }
            } else {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj2 != coroutine_suspended) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86711f;
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, coroutine_suspended2, g.a())) {
                    if (Result.m76isFailureimpl(obj)) {
                        Continuation<R> continuation = this.f86712d;
                        Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(obj);
                        Intrinsics.checkNotNull(m73exceptionOrNullimpl);
                        Result.Companion companion = Result.Companion;
                        continuation.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(m73exceptionOrNullimpl)));
                        return;
                    }
                    this.f86712d.resumeWith(obj);
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.selects.a
    public <P, Q> void s(@m8.g kotlinx.coroutines.selects.e<? super P, ? extends Q> eVar, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        a.C0764a.a(this, eVar, function2);
    }

    @Override // kotlinx.coroutines.selects.f
    public boolean t() {
        Object q9 = q(null);
        if (q9 == s.f86625d) {
            return true;
        }
        if (q9 == null) {
            return false;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Unexpected trySelectIdempotent result ", q9).toString());
    }

    @Override // kotlinx.coroutines.internal.x
    @m8.g
    public String toString() {
        return "SelectInstance(state=" + this._state + ", result=" + this._result + ')';
    }

    @Override // kotlinx.coroutines.selects.f
    @m8.g
    public Continuation<R> u() {
        return this;
    }

    @Override // kotlinx.coroutines.selects.f
    public void v(@m8.g Throwable th) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Continuation intercepted;
        while (true) {
            Object obj = this._result;
            if (obj == g.c()) {
                if (androidx.concurrent.futures.a.a(f86711f, this, g.c(), new e0(th, false, 2, null))) {
                    return;
                }
            } else {
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (obj != coroutine_suspended) {
                    throw new IllegalStateException("Already resumed");
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86711f;
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, coroutine_suspended2, g.a())) {
                    intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.f86712d);
                    Result.Companion companion = Result.Companion;
                    intercepted.resumeWith(Result.m70constructorimpl(ResultKt.createFailure(th)));
                    return;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.selects.f
    @m8.h
    public Object w(@m8.g kotlinx.coroutines.internal.b bVar) {
        return new a(this, bVar).c(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.selects.a
    public <Q> void y(@m8.g kotlinx.coroutines.selects.d<? extends Q> dVar, @m8.g Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
        dVar.c(this, function2);
    }
}
