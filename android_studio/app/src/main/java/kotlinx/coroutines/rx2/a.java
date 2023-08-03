package kotlinx.coroutines.rx2;

import com.facebook.common.callercontext.ContextChain;
import io.reactivex.h0;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.m3;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RxScheduler.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b \u0010!J+\u0010\n\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006#"}, d2 = {"Lkotlinx/coroutines/rx2/a;", "Lio/reactivex/h0;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "delay", "Ljava/util/concurrent/TimeUnit;", "unit", "Lio/reactivex/disposables/c;", "g", "(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/c;", "Lio/reactivex/h0$c;", "d", "()Lio/reactivex/h0$c;", "", ContextChain.TAG_INFRA, "()V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/n0;", "c", "Lkotlinx/coroutines/n0;", "dispatcher", "Lkotlinx/coroutines/c0;", "Lkotlinx/coroutines/c0;", "schedulerJob", "Lkotlinx/coroutines/s0;", "e", "Lkotlinx/coroutines/s0;", "scope", "<init>", "(Lkotlinx/coroutines/n0;)V", "a", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class a extends h0 {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f86493f = AtomicLongFieldUpdater.newUpdater(a.class, "workerCounter");
    @JvmField
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public final n0 f86494c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final c0 f86495d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final s0 f86496e;
    @m8.g
    private volatile /* synthetic */ long workerCounter;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RxScheduler.kt */
    @Metadata(bv = {}, d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0013\u001a\u00020\u0005\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J$\u0010\n\u001a\u00020\t2\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016R\u0014\u0010\u0013\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR3\u0010%\u001a\u001e\u0012\u001a\u0012\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0!\u0012\u0006\u0012\u0004\u0018\u00010\"0 0\u001f8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lkotlinx/coroutines/rx2/a$a;", "Lio/reactivex/h0$c;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "delay", "Ljava/util/concurrent/TimeUnit;", "unit", "Lio/reactivex/disposables/c;", "c", "", "isDisposed", "", "dispose", "", "toString", "a", "J", "counter", "Lkotlinx/coroutines/n0;", "b", "Lkotlinx/coroutines/n0;", "dispatcher", "Lkotlinx/coroutines/c0;", "Lkotlinx/coroutines/c0;", "workerJob", "Lkotlinx/coroutines/s0;", "d", "Lkotlinx/coroutines/s0;", "workerScope", "Lkotlinx/coroutines/channels/m;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "e", "Lkotlinx/coroutines/channels/m;", "blockChannel", "Lkotlinx/coroutines/j2;", "parentJob", "<init>", "(JLkotlinx/coroutines/n0;Lkotlinx/coroutines/j2;)V", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
    /* renamed from: kotlinx.coroutines.rx2.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0757a extends h0.c {

        /* renamed from: a  reason: collision with root package name */
        private final long f86497a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final n0 f86498b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final c0 f86499c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final s0 f86500d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final kotlinx.coroutines.channels.m<Function1<Continuation<? super Unit>, Object>> f86501e;

        /* compiled from: RxScheduler.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.rx2.DispatcherScheduler$DispatcherWorker$1", f = "RxScheduler.kt", i = {0, 1}, l = {com.google.android.exoplayer2.extractor.ts.a0.f22979w, 82}, m = "invokeSuspend", n = {"$this$consume$iv$iv", "$this$consume$iv$iv"}, s = {"L$0", "L$0"})
        /* renamed from: kotlinx.coroutines.rx2.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0758a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            Object f86502a;

            /* renamed from: b  reason: collision with root package name */
            Object f86503b;

            /* renamed from: c  reason: collision with root package name */
            int f86504c;

            C0758a(Continuation<? super C0758a> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C0758a(continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0758a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x004b A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x005a A[Catch: all -> 0x0077, TRY_LEAVE, TryCatch #0 {all -> 0x0077, blocks: (B:22:0x0052, B:24:0x005a), top: B:37:0x0052 }] */
            /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x006d -> B:17:0x003f). Please submit an issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r9) {
                /*
                    r8 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r1 = r8.f86504c
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L31
                    if (r1 == r3) goto L23
                    if (r1 != r2) goto L1b
                    java.lang.Object r1 = r8.f86503b
                    kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                    java.lang.Object r4 = r8.f86502a
                    kotlinx.coroutines.channels.f0 r4 = (kotlinx.coroutines.channels.f0) r4
                    kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L7a
                    r9 = r1
                    goto L3e
                L1b:
                    java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r9.<init>(r0)
                    throw r9
                L23:
                    java.lang.Object r1 = r8.f86503b
                    kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                    java.lang.Object r4 = r8.f86502a
                    kotlinx.coroutines.channels.f0 r4 = (kotlinx.coroutines.channels.f0) r4
                    kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L7a
                    r5 = r4
                    r4 = r8
                    goto L51
                L31:
                    kotlin.ResultKt.throwOnFailure(r9)
                    kotlinx.coroutines.rx2.a$a r9 = kotlinx.coroutines.rx2.a.C0757a.this
                    kotlinx.coroutines.channels.m r4 = kotlinx.coroutines.rx2.a.C0757a.e(r9)
                    kotlinx.coroutines.channels.o r9 = r4.iterator()     // Catch: java.lang.Throwable -> L7a
                L3e:
                    r1 = r8
                L3f:
                    r1.f86502a = r4     // Catch: java.lang.Throwable -> L7a
                    r1.f86503b = r9     // Catch: java.lang.Throwable -> L7a
                    r1.f86504c = r3     // Catch: java.lang.Throwable -> L7a
                    java.lang.Object r5 = r9.b(r1)     // Catch: java.lang.Throwable -> L7a
                    if (r5 != r0) goto L4c
                    return r0
                L4c:
                    r7 = r1
                    r1 = r9
                    r9 = r5
                    r5 = r4
                    r4 = r7
                L51:
                    r6 = 0
                    java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L77
                    boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L77
                    if (r9 == 0) goto L71
                    java.lang.Object r9 = r1.next()     // Catch: java.lang.Throwable -> L77
                    kotlin.jvm.functions.Function1 r9 = (kotlin.jvm.functions.Function1) r9     // Catch: java.lang.Throwable -> L77
                    r4.f86502a = r5     // Catch: java.lang.Throwable -> L77
                    r4.f86503b = r1     // Catch: java.lang.Throwable -> L77
                    r4.f86504c = r2     // Catch: java.lang.Throwable -> L77
                    java.lang.Object r9 = r9.invoke(r4)     // Catch: java.lang.Throwable -> L77
                    if (r9 != r0) goto L6d
                    return r0
                L6d:
                    r9 = r1
                    r1 = r4
                    r4 = r5
                    goto L3f
                L71:
                    kotlinx.coroutines.channels.r.b(r5, r6)
                    kotlin.Unit r9 = kotlin.Unit.INSTANCE
                    return r9
                L77:
                    r9 = move-exception
                    r4 = r5
                    goto L7b
                L7a:
                    r9 = move-exception
                L7b:
                    throw r9     // Catch: java.lang.Throwable -> L7c
                L7c:
                    r0 = move-exception
                    kotlinx.coroutines.channels.r.b(r4, r9)
                    throw r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.a.C0757a.C0758a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* compiled from: RxScheduler.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u001c\u0010\u0004\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "", "task", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "a", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;"}, k = 3, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.rx2.a$a$b */
        /* loaded from: classes4.dex */
        static final class b extends Lambda implements Function1<Function1<? super Continuation<? super Unit>, ? extends Object>, Runnable> {

            /* compiled from: Runnable.kt */
            @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"", "run", "()V", "kotlinx/coroutines/f3$a", "<anonymous>"}, k = 3, mv = {1, 6, 0})
            /* renamed from: kotlinx.coroutines.rx2.a$a$b$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public static final class RunnableC0759a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ C0757a f86507a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Function1 f86508b;

                public RunnableC0759a(C0757a c0757a, Function1 function1) {
                    this.f86507a = c0757a;
                    this.f86508b = function1;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f86507a.f86501e.mo51trySendJP2dKIU(this.f86508b);
                }
            }

            b() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @m8.g
            /* renamed from: a */
            public final Runnable invoke(@m8.g Function1<? super Continuation<? super Unit>, ? extends Object> function1) {
                return new RunnableC0759a(C0757a.this, function1);
            }
        }

        public C0757a(long j4, @m8.g n0 n0Var, @m8.g j2 j2Var) {
            this.f86497a = j4;
            this.f86498b = n0Var;
            c0 a10 = m3.a(j2Var);
            this.f86499c = a10;
            s0 a11 = t0.a(a10.plus(n0Var));
            this.f86500d = a11;
            this.f86501e = kotlinx.coroutines.channels.p.d(Integer.MAX_VALUE, null, null, 6, null);
            kotlinx.coroutines.l.f(a11, null, null, new C0758a(null), 3, null);
        }

        @Override // io.reactivex.h0.c
        @m8.g
        public io.reactivex.disposables.c c(@m8.g Runnable runnable, long j4, @m8.g TimeUnit timeUnit) {
            io.reactivex.disposables.c g4;
            g4 = t.g(this.f86500d, runnable, timeUnit.toMillis(j4), new b());
            return g4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            j0.a.a(this.f86501e, null, 1, null);
            j2.a.b(this.f86499c, null, 1, null);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return !t0.k(this.f86500d);
        }

        @m8.g
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f86498b);
            sb.append(" (worker ");
            sb.append(this.f86497a);
            sb.append(", ");
            sb.append(isDisposed() ? "disposed" : "active");
            sb.append(')');
            return sb.toString();
        }
    }

    /* compiled from: RxScheduler.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0007\u001a\u00060\u0005j\u0002`\u00062\u001c\u0010\u0004\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0000H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "", "task", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "a", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class b extends Lambda implements Function1<Function1<? super Continuation<? super Unit>, ? extends Object>, Runnable> {

        /* compiled from: RxScheduler.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.rx2.DispatcherScheduler$scheduleDirect$1$1$1", f = "RxScheduler.kt", i = {}, l = {60}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.rx2.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0760a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f86510a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Function1<Continuation<? super Unit>, Object> f86511b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0760a(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super C0760a> continuation) {
                super(2, continuation);
                this.f86511b = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C0760a(this.f86511b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0760a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86510a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Function1<Continuation<? super Unit>, Object> function1 = this.f86511b;
                    this.f86510a = 1;
                    if (function1.invoke(this) == coroutine_suspended) {
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

        /* compiled from: Runnable.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"", "run", "()V", "kotlinx/coroutines/f3$a", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.rx2.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class RunnableC0761b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ a f86512a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Function1 f86513b;

            public RunnableC0761b(a aVar, Function1 function1) {
                this.f86512a = aVar;
                this.f86513b = function1;
            }

            @Override // java.lang.Runnable
            public final void run() {
                kotlinx.coroutines.l.f(this.f86512a.f86496e, null, null, new C0760a(this.f86513b, null), 3, null);
            }
        }

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.g
        /* renamed from: a */
        public final Runnable invoke(@m8.g Function1<? super Continuation<? super Unit>, ? extends Object> function1) {
            return new RunnableC0761b(a.this, function1);
        }
    }

    public a(@m8.g n0 n0Var) {
        this.f86494c = n0Var;
        c0 c10 = m3.c(null, 1, null);
        this.f86495d = c10;
        this.f86496e = t0.a(c10.plus(n0Var));
        this.workerCounter = 1L;
    }

    @Override // io.reactivex.h0
    @m8.g
    public h0.c d() {
        return new C0757a(f86493f.getAndIncrement(this), this.f86494c, this.f86495d);
    }

    @Override // io.reactivex.h0
    @m8.g
    public io.reactivex.disposables.c g(@m8.g Runnable runnable, long j4, @m8.g TimeUnit timeUnit) {
        io.reactivex.disposables.c g4;
        g4 = t.g(this.f86496e, runnable, timeUnit.toMillis(j4), new b());
        return g4;
    }

    @Override // io.reactivex.h0
    public void i() {
        j2.a.b(this.f86495d, null, 1, null);
    }

    @m8.g
    public String toString() {
        return this.f86494c.toString();
    }
}
