package kotlinx.coroutines.flow;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.OverloadResolutionByLambdaReturnType;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.z1;
import org.bouncycastle.math.Primes;

/* compiled from: Delay.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a&\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u001a2\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0005H\u0007\u001a3\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u001a<\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0005H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a9\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\f\u001a&\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000f\u001a\u00020\u0002H\u0007\u001a$\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0002H\u0000\u001a3\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0017\u001a\u00020\u0007H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\n\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0019"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "", "timeoutMillis", "a", "Lkotlin/Function1;", "b", "Lkotlin/time/Duration;", "timeout", "c", "(Lkotlinx/coroutines/flow/i;J)Lkotlinx/coroutines/flow/i;", "d", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/i;", "timeoutMillisSelector", "e", "periodMillis", "h", "Lkotlinx/coroutines/s0;", "delayMillis", "initialDelayMillis", "Lkotlinx/coroutines/channels/f0;", "", "f", TypedValues.Cycle.S_WAVE_PERIOD, ContextChain.TAG_INFRA, "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class p {

    /* compiled from: Delay.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "it", "", "a", "(Ljava/lang/Object;)Ljava/lang/Long;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a extends Lambda implements Function1<T, Long> {

        /* renamed from: a */
        final /* synthetic */ long f86085a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(long j4) {
            super(1);
            this.f86085a = j4;
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.g
        /* renamed from: a */
        public final Long invoke(T t9) {
            return Long.valueOf(this.f86085a);
        }
    }

    /* compiled from: Delay.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "emittedItem", "", "a", "(Ljava/lang/Object;)Ljava/lang/Long;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b extends Lambda implements Function1<T, Long> {

        /* renamed from: a */
        final /* synthetic */ Function1<T, Duration> f86086a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Function1<? super T, Duration> function1) {
            super(1);
            this.f86086a = function1;
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.g
        /* renamed from: a */
        public final Long invoke(T t9) {
            return Long.valueOf(b1.e(this.f86086a.invoke(t9).m1465unboximpl()));
        }
    }

    /* compiled from: Delay.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/flow/j;", "downstream", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {222, 355}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "timeoutMillis", "downstream", "values", "lastValue", "timeoutMillis"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2", "L$3"})
    /* loaded from: classes4.dex */
    public static final class c extends SuspendLambda implements Function3<s0, j<? super T>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f86087a;

        /* renamed from: b */
        Object f86088b;

        /* renamed from: c */
        int f86089c;

        /* renamed from: d */
        private /* synthetic */ Object f86090d;

        /* renamed from: e */
        /* synthetic */ Object f86091e;

        /* renamed from: f */
        final /* synthetic */ Function1<T, Long> f86092f;

        /* renamed from: g */
        final /* synthetic */ i<T> f86093g;

        /* compiled from: Delay.kt */
        @Metadata(bv = {}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1", f = "Delay.kt", i = {}, l = {233}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class a extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f86094a;

            /* renamed from: b */
            final /* synthetic */ j<T> f86095b;

            /* renamed from: c */
            final /* synthetic */ Ref.ObjectRef<Object> f86096c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(j<? super T> jVar, Ref.ObjectRef<Object> objectRef, Continuation<? super a> continuation) {
                super(1, continuation);
                this.f86095b = jVar;
                this.f86096c = objectRef;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.g Continuation<?> continuation) {
                return new a(this.f86095b, this.f86096c, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            @m8.h
            public final Object invoke(@m8.h Continuation<? super Unit> continuation) {
                return ((a) create(continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86094a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    j<T> jVar = this.f86095b;
                    p0 p0Var = kotlinx.coroutines.flow.internal.s.f86031a;
                    Object obj2 = this.f86096c.element;
                    if (obj2 == p0Var) {
                        obj2 = null;
                    }
                    this.f86094a = 1;
                    if (jVar.emit(obj2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                this.f86096c.element = null;
                return Unit.INSTANCE;
            }
        }

        /* compiled from: Delay.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/q;", "", "value", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2", f = "Delay.kt", i = {0}, l = {243}, m = "invokeSuspend", n = {"$this$onFailure$iv"}, s = {"L$0"})
        /* loaded from: classes4.dex */
        public static final class b extends SuspendLambda implements Function2<kotlinx.coroutines.channels.q<? extends Object>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            Object f86097a;

            /* renamed from: b */
            int f86098b;

            /* renamed from: c */
            /* synthetic */ Object f86099c;

            /* renamed from: d */
            final /* synthetic */ Ref.ObjectRef<Object> f86100d;

            /* renamed from: e */
            final /* synthetic */ j<T> f86101e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(Ref.ObjectRef<Object> objectRef, j<? super T> jVar, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f86100d = objectRef;
                this.f86101e = jVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f86100d, this.f86101e, continuation);
                bVar.f86099c = obj;
                return bVar;
            }

            @m8.h
            public final Object h(@m8.g Object obj, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(kotlinx.coroutines.channels.q.b(obj), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.q<? extends Object> qVar, Continuation<? super Unit> continuation) {
                return h(qVar.o(), continuation);
            }

            /* JADX WARN: Type inference failed for: r7v3, types: [T, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r7v6, types: [T, kotlinx.coroutines.internal.p0] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                Ref.ObjectRef<Object> objectRef;
                Ref.ObjectRef<Object> objectRef2;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86098b;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    ?? o9 = ((kotlinx.coroutines.channels.q) this.f86099c).o();
                    objectRef = this.f86100d;
                    boolean z9 = o9 instanceof q.c;
                    if (!z9) {
                        objectRef.element = o9;
                    }
                    j<T> jVar = this.f86101e;
                    if (z9) {
                        Throwable f10 = kotlinx.coroutines.channels.q.f(o9);
                        if (f10 == null) {
                            Object obj2 = objectRef.element;
                            if (obj2 != null) {
                                if (obj2 == kotlinx.coroutines.flow.internal.s.f86031a) {
                                    obj2 = null;
                                }
                                this.f86099c = o9;
                                this.f86097a = objectRef;
                                this.f86098b = 1;
                                if (jVar.emit(obj2, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                objectRef2 = objectRef;
                            }
                            objectRef.element = kotlinx.coroutines.flow.internal.s.f86033c;
                        } else {
                            throw f10;
                        }
                    }
                    return Unit.INSTANCE;
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    objectRef2 = (Ref.ObjectRef) this.f86097a;
                    ResultKt.throwOnFailure(obj);
                }
                objectRef = objectRef2;
                objectRef.element = kotlinx.coroutines.flow.internal.s.f86033c;
                return Unit.INSTANCE;
            }
        }

        /* compiled from: Delay.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/d0;", "", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1", f = "Delay.kt", i = {}, l = {Primes.SMALL_FACTOR_LIMIT}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.p$c$c */
        /* loaded from: classes4.dex */
        public static final class C0748c extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super Object>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f86102a;

            /* renamed from: b */
            private /* synthetic */ Object f86103b;

            /* renamed from: c */
            final /* synthetic */ i<T> f86104c;

            /* compiled from: Delay.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.p$c$c$a */
            /* loaded from: classes4.dex */
            public static final class a<T> implements j, SuspendFunction {

                /* renamed from: a */
                final /* synthetic */ kotlinx.coroutines.channels.d0<Object> f86105a;

                /* compiled from: Delay.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1", f = "Delay.kt", i = {}, l = {Primes.SMALL_FACTOR_LIMIT}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.p$c$c$a$a */
                /* loaded from: classes4.dex */
                public static final class C0749a extends ContinuationImpl {

                    /* renamed from: a */
                    /* synthetic */ Object f86106a;

                    /* renamed from: b */
                    final /* synthetic */ a<T> f86107b;

                    /* renamed from: c */
                    int f86108c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0749a(a<? super T> aVar, Continuation<? super C0749a> continuation) {
                        super(continuation);
                        this.f86107b = aVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f86106a = obj;
                        this.f86108c |= Integer.MIN_VALUE;
                        return this.f86107b.emit(null, this);
                    }
                }

                a(kotlinx.coroutines.channels.d0<Object> d0Var) {
                    this.f86105a = d0Var;
                }

                /* JADX WARN: Removed duplicated region for block: B:32:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:36:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.p.c.C0748c.a.C0749a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.p$c$c$a$a r0 = (kotlinx.coroutines.flow.p.c.C0748c.a.C0749a) r0
                        int r1 = r0.f86108c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f86108c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.p$c$c$a$a r0 = new kotlinx.coroutines.flow.p$c$c$a$a
                        r0.<init>(r4, r6)
                    L18:
                        java.lang.Object r6 = r0.f86106a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f86108c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L43
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.d0<java.lang.Object> r6 = r4.f86105a
                        if (r5 != 0) goto L3a
                        kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
                    L3a:
                        r0.f86108c = r3
                        java.lang.Object r5 = r6.send(r5, r0)
                        if (r5 != r1) goto L43
                        return r1
                    L43:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.p.c.C0748c.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0748c(i<? extends T> iVar, Continuation<? super C0748c> continuation) {
                super(2, continuation);
                this.f86104c = iVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0748c c0748c = new C0748c(this.f86104c, continuation);
                c0748c.f86103b = obj;
                return c0748c;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.d0<? super Object> d0Var, Continuation<? super Unit> continuation) {
                return invoke2((kotlinx.coroutines.channels.d0<Object>) d0Var, continuation);
            }

            @m8.h
            /* renamed from: invoke */
            public final Object invoke2(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0748c) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86102a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    i<T> iVar = this.f86104c;
                    a aVar = new a((kotlinx.coroutines.channels.d0) this.f86103b);
                    this.f86102a = 1;
                    if (iVar.collect(aVar, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(Function1<? super T, Long> function1, i<? extends T> iVar, Continuation<? super c> continuation) {
            super(3, continuation);
            this.f86092f = function1;
            this.f86093g = iVar;
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g s0 s0Var, @m8.g j<? super T> jVar, @m8.h Continuation<? super Unit> continuation) {
            c cVar = new c(this.f86092f, this.f86093g, continuation);
            cVar.f86090d = s0Var;
            cVar.f86091e = jVar;
            return cVar.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(11:50|26|30|31|32|33|(1:35)|36|37|(1:39)|(1:41)(1:42)) */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x00f7, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x00f8, code lost:
            r10.p0(r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:100:0x010a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:101:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x00e0 A[Catch: all -> 0x00f7, TryCatch #0 {all -> 0x00f7, blocks: (B:89:0x00dc, B:91:0x00e0, B:92:0x00ea), top: B:104:0x00dc }] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0105  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x010b -> B:64:0x006f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 276
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.p.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Delay.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$3", f = "Delay.kt", i = {0, 1, 2}, l = {314, TypedValues.Attributes.TYPE_PATH_ROTATE, TypedValues.Attributes.TYPE_EASING}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    /* loaded from: classes4.dex */
    public static final class d extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super Unit>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f86109a;

        /* renamed from: b */
        private /* synthetic */ Object f86110b;

        /* renamed from: c */
        final /* synthetic */ long f86111c;

        /* renamed from: d */
        final /* synthetic */ long f86112d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(long j4, long j10, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f86111c = j4;
            this.f86112d = j10;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            d dVar = new d(this.f86111c, this.f86112d, continuation);
            dVar.f86110b = obj;
            return dVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<? super Unit> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0050 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x005d A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x005b -> B:36:0x0040). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r7.f86109a
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L2a
                if (r1 == r4) goto L11
                if (r1 == r3) goto L21
                if (r1 != r2) goto L19
            L11:
                java.lang.Object r1 = r7.f86110b
                kotlinx.coroutines.channels.d0 r1 = (kotlinx.coroutines.channels.d0) r1
                kotlin.ResultKt.throwOnFailure(r8)
                goto L3f
            L19:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L21:
                java.lang.Object r1 = r7.f86110b
                kotlinx.coroutines.channels.d0 r1 = (kotlinx.coroutines.channels.d0) r1
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r7
                goto L51
            L2a:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f86110b
                r1 = r8
                kotlinx.coroutines.channels.d0 r1 = (kotlinx.coroutines.channels.d0) r1
                long r5 = r7.f86111c
                r7.f86110b = r1
                r7.f86109a = r4
                java.lang.Object r8 = kotlinx.coroutines.b1.b(r5, r7)
                if (r8 != r0) goto L3f
                return r0
            L3f:
                r8 = r7
            L40:
                kotlinx.coroutines.channels.j0 r4 = r1.getChannel()
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                r8.f86110b = r1
                r8.f86109a = r3
                java.lang.Object r4 = r4.send(r5, r8)
                if (r4 != r0) goto L51
                return r0
            L51:
                long r4 = r8.f86112d
                r8.f86110b = r1
                r8.f86109a = r2
                java.lang.Object r4 = kotlinx.coroutines.b1.b(r4, r8)
                if (r4 != r0) goto L40
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.p.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Delay.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/flow/j;", "downstream", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2", f = "Delay.kt", i = {0, 0, 0, 0}, l = {352}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "ticker"}, s = {"L$0", "L$1", "L$2", "L$3"})
    /* loaded from: classes4.dex */
    public static final class e extends SuspendLambda implements Function3<s0, j<? super T>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f86113a;

        /* renamed from: b */
        Object f86114b;

        /* renamed from: c */
        int f86115c;

        /* renamed from: d */
        private /* synthetic */ Object f86116d;

        /* renamed from: e */
        /* synthetic */ Object f86117e;

        /* renamed from: f */
        final /* synthetic */ long f86118f;

        /* renamed from: g */
        final /* synthetic */ i<T> f86119g;

        /* compiled from: Delay.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/q;", "", "result", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$1", f = "Delay.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class a extends SuspendLambda implements Function2<kotlinx.coroutines.channels.q<? extends Object>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f86120a;

            /* renamed from: b */
            /* synthetic */ Object f86121b;

            /* renamed from: c */
            final /* synthetic */ Ref.ObjectRef<Object> f86122c;

            /* renamed from: d */
            final /* synthetic */ kotlinx.coroutines.channels.f0<Unit> f86123d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Ref.ObjectRef<Object> objectRef, kotlinx.coroutines.channels.f0<Unit> f0Var, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f86122c = objectRef;
                this.f86123d = f0Var;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f86122c, this.f86123d, continuation);
                aVar.f86121b = obj;
                return aVar;
            }

            @m8.h
            public final Object h(@m8.g Object obj, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(kotlinx.coroutines.channels.q.b(obj), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.q<? extends Object> qVar, Continuation<? super Unit> continuation) {
                return h(qVar.o(), continuation);
            }

            /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r4v8, types: [T, kotlinx.coroutines.internal.p0] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f86120a == 0) {
                    ResultKt.throwOnFailure(obj);
                    ?? o9 = ((kotlinx.coroutines.channels.q) this.f86121b).o();
                    Ref.ObjectRef<Object> objectRef = this.f86122c;
                    boolean z9 = o9 instanceof q.c;
                    if (!z9) {
                        objectRef.element = o9;
                    }
                    kotlinx.coroutines.channels.f0<Unit> f0Var = this.f86123d;
                    if (z9) {
                        Throwable f10 = kotlinx.coroutines.channels.q.f(o9);
                        if (f10 == null) {
                            f0Var.d(new ChildCancelledException());
                            objectRef.element = kotlinx.coroutines.flow.internal.s.f86033c;
                        } else {
                            throw f10;
                        }
                    }
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* compiled from: Delay.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$1$2", f = "Delay.kt", i = {}, l = {300}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class b extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f86124a;

            /* renamed from: b */
            final /* synthetic */ Ref.ObjectRef<Object> f86125b;

            /* renamed from: c */
            final /* synthetic */ j<T> f86126c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(Ref.ObjectRef<Object> objectRef, j<? super T> jVar, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f86125b = objectRef;
                this.f86126c = jVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new b(this.f86125b, this.f86126c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g Unit unit, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86124a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Ref.ObjectRef<Object> objectRef = this.f86125b;
                    Object obj2 = objectRef.element;
                    if (obj2 == null) {
                        return Unit.INSTANCE;
                    }
                    objectRef.element = null;
                    j<T> jVar = this.f86126c;
                    if (obj2 == kotlinx.coroutines.flow.internal.s.f86031a) {
                        obj2 = null;
                    }
                    this.f86124a = 1;
                    if (jVar.emit(obj2, this) == coroutine_suspended) {
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

        /* compiled from: Delay.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00020\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/d0;", "", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1", f = "Delay.kt", i = {}, l = {280}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class c extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super Object>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f86127a;

            /* renamed from: b */
            private /* synthetic */ Object f86128b;

            /* renamed from: c */
            final /* synthetic */ i<T> f86129c;

            /* compiled from: Delay.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* loaded from: classes4.dex */
            public static final class a<T> implements j, SuspendFunction {

                /* renamed from: a */
                final /* synthetic */ kotlinx.coroutines.channels.d0<Object> f86130a;

                /* compiled from: Delay.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$sample$2$values$1$1", f = "Delay.kt", i = {}, l = {280}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.p$e$c$a$a */
                /* loaded from: classes4.dex */
                public static final class C0750a extends ContinuationImpl {

                    /* renamed from: a */
                    /* synthetic */ Object f86131a;

                    /* renamed from: b */
                    final /* synthetic */ a<T> f86132b;

                    /* renamed from: c */
                    int f86133c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0750a(a<? super T> aVar, Continuation<? super C0750a> continuation) {
                        super(continuation);
                        this.f86132b = aVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f86131a = obj;
                        this.f86133c |= Integer.MIN_VALUE;
                        return this.f86132b.emit(null, this);
                    }
                }

                a(kotlinx.coroutines.channels.d0<Object> d0Var) {
                    this.f86130a = d0Var;
                }

                /* JADX WARN: Removed duplicated region for block: B:32:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:36:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.p.e.c.a.C0750a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.p$e$c$a$a r0 = (kotlinx.coroutines.flow.p.e.c.a.C0750a) r0
                        int r1 = r0.f86133c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f86133c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.p$e$c$a$a r0 = new kotlinx.coroutines.flow.p$e$c$a$a
                        r0.<init>(r4, r6)
                    L18:
                        java.lang.Object r6 = r0.f86131a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f86133c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L43
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.d0<java.lang.Object> r6 = r4.f86130a
                        if (r5 != 0) goto L3a
                        kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
                    L3a:
                        r0.f86133c = r3
                        java.lang.Object r5 = r6.send(r5, r0)
                        if (r5 != r1) goto L43
                        return r1
                    L43:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.p.e.c.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            c(i<? extends T> iVar, Continuation<? super c> continuation) {
                super(2, continuation);
                this.f86129c = iVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                c cVar = new c(this.f86129c, continuation);
                cVar.f86128b = obj;
                return cVar;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(kotlinx.coroutines.channels.d0<? super Object> d0Var, Continuation<? super Unit> continuation) {
                return invoke2((kotlinx.coroutines.channels.d0<Object>) d0Var, continuation);
            }

            @m8.h
            /* renamed from: invoke */
            public final Object invoke2(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((c) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86127a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    i<T> iVar = this.f86129c;
                    a aVar = new a((kotlinx.coroutines.channels.d0) this.f86128b);
                    this.f86127a = 1;
                    if (iVar.collect(aVar, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        e(long j4, i<? extends T> iVar, Continuation<? super e> continuation) {
            super(3, continuation);
            this.f86118f = j4;
            this.f86119g = iVar;
        }

        @Override // kotlin.jvm.functions.Function3
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g s0 s0Var, @m8.g j<? super T> jVar, @m8.h Continuation<? super Unit> continuation) {
            e eVar = new e(this.f86118f, this.f86119g, continuation);
            eVar.f86116d = s0Var;
            eVar.f86117e = jVar;
            return eVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            kotlinx.coroutines.channels.f0 g4;
            j jVar;
            kotlinx.coroutines.channels.f0 f0Var;
            Ref.ObjectRef objectRef;
            kotlinx.coroutines.channels.f0 f0Var2;
            Object coroutine_suspended2;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86115c;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f86116d;
                kotlinx.coroutines.channels.f0 f10 = kotlinx.coroutines.channels.b0.f(s0Var, null, -1, new c(this.f86119g, null), 1, null);
                Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                g4 = p.g(s0Var, this.f86118f, 0L, 2, null);
                jVar = (j) this.f86117e;
                f0Var = f10;
                objectRef = objectRef2;
                f0Var2 = g4;
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                f0Var2 = (kotlinx.coroutines.channels.f0) this.f86114b;
                objectRef = (Ref.ObjectRef) this.f86113a;
                f0Var = (kotlinx.coroutines.channels.f0) this.f86117e;
                jVar = (j) this.f86116d;
                ResultKt.throwOnFailure(obj);
            }
            while (objectRef.element != kotlinx.coroutines.flow.internal.s.f86033c) {
                this.f86116d = jVar;
                this.f86117e = f0Var;
                this.f86113a = objectRef;
                this.f86114b = f0Var2;
                this.f86115c = 1;
                kotlinx.coroutines.selects.b bVar = new kotlinx.coroutines.selects.b(this);
                try {
                    bVar.y(f0Var.t(), new a(objectRef, f0Var2, null));
                    bVar.y(f0Var2.o(), new b(objectRef, jVar, null));
                } catch (Throwable th) {
                    bVar.p0(th);
                }
                Object o02 = bVar.o0();
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (o02 == coroutine_suspended2) {
                    DebugProbesKt.probeCoroutineSuspended(this);
                    continue;
                }
                if (o02 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @z1
    @m8.g
    public static final <T> i<T> a(@m8.g i<? extends T> iVar, long j4) {
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i4 >= 0) {
            return i4 == 0 ? iVar : e(iVar, new a(j4));
        }
        throw new IllegalArgumentException("Debounce timeout should not be negative".toString());
    }

    @z1
    @m8.g
    @OverloadResolutionByLambdaReturnType
    public static final <T> i<T> b(@m8.g i<? extends T> iVar, @m8.g Function1<? super T, Long> function1) {
        return e(iVar, function1);
    }

    @z1
    @m8.g
    public static final <T> i<T> c(@m8.g i<? extends T> iVar, long j4) {
        return k.a0(iVar, b1.e(j4));
    }

    @z1
    @JvmName(name = "debounceDuration")
    @m8.g
    @OverloadResolutionByLambdaReturnType
    public static final <T> i<T> d(@m8.g i<? extends T> iVar, @m8.g Function1<? super T, Duration> function1) {
        return e(iVar, new b(function1));
    }

    private static final <T> i<T> e(i<? extends T> iVar, Function1<? super T, Long> function1) {
        return kotlinx.coroutines.flow.internal.n.b(new c(function1, iVar, null));
    }

    @m8.g
    public static final kotlinx.coroutines.channels.f0<Unit> f(@m8.g s0 s0Var, long j4, long j10) {
        if (!(j4 >= 0)) {
            throw new IllegalArgumentException(("Expected non-negative delay, but has " + j4 + " ms").toString());
        }
        if (j10 >= 0) {
            return kotlinx.coroutines.channels.b0.f(s0Var, null, 0, new d(j10, j4, null), 1, null);
        }
        throw new IllegalArgumentException(("Expected non-negative initial delay, but has " + j10 + " ms").toString());
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 g(s0 s0Var, long j4, long j10, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            j10 = j4;
        }
        return k.x0(s0Var, j4, j10);
    }

    @z1
    @m8.g
    public static final <T> i<T> h(@m8.g i<? extends T> iVar, long j4) {
        if (j4 > 0) {
            return kotlinx.coroutines.flow.internal.n.b(new e(j4, iVar, null));
        }
        throw new IllegalArgumentException("Sample period should be positive".toString());
    }

    @z1
    @m8.g
    public static final <T> i<T> i(@m8.g i<? extends T> iVar, long j4) {
        return k.A1(iVar, b1.e(j4));
    }
}
