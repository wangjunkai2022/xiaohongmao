package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003Bz\u0012B\u0010\u001a\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0011¢\u0006\u0002\b\u0017\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\bø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ&\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014J!\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00010\fH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010RS\u0010\u001a\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0011¢\u0006\u0002\b\u00178\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/flow/internal/i;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/internal/g;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/internal/d;", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/flow/j;", "collector", "", "r", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "value", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "e", "Lkotlin/jvm/functions/Function3;", "transform", "Lkotlinx/coroutines/flow/i;", "flow", "<init>", "(Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class i<T, R> extends g<T, R> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Function3<kotlinx.coroutines.flow.j<? super R>, T, Continuation<? super Unit>, Object> f85939e;

    /* compiled from: Merge.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3", f = "Merge.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85940a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f85941b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ i<T, R> f85942c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.j<R> f85943d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Merge.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* renamed from: kotlinx.coroutines.flow.internal.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0739a<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Ref.ObjectRef<j2> f85944a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ s0 f85945b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ i<T, R> f85946c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.j<R> f85947d;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Merge.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
            @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1$2", f = "Merge.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: kotlinx.coroutines.flow.internal.i$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public static final class C0740a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f85948a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ i<T, R> f85949b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j<R> f85950c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ T f85951d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C0740a(i<T, R> iVar, kotlinx.coroutines.flow.j<? super R> jVar, T t9, Continuation<? super C0740a> continuation) {
                    super(2, continuation);
                    this.f85949b = iVar;
                    this.f85950c = jVar;
                    this.f85951d = t9;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    return new C0740a(this.f85949b, this.f85950c, this.f85951d, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
                    return invoke2(s0Var, continuation);
                }

                @m8.h
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0740a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f85948a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        Function3 function3 = ((i) this.f85949b).f85939e;
                        kotlinx.coroutines.flow.j<R> jVar = this.f85950c;
                        T t9 = this.f85951d;
                        this.f85948a = 1;
                        if (function3.invoke(jVar, t9, this) == coroutine_suspended) {
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
            /* compiled from: Merge.kt */
            @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
            @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1", f = "Merge.kt", i = {0, 0}, l = {30}, m = "emit", n = {"this", "value"}, s = {"L$0", "L$1"})
            /* renamed from: kotlinx.coroutines.flow.internal.i$a$a$b */
            /* loaded from: classes4.dex */
            public static final class b extends ContinuationImpl {

                /* renamed from: a  reason: collision with root package name */
                Object f85952a;

                /* renamed from: b  reason: collision with root package name */
                Object f85953b;

                /* renamed from: c  reason: collision with root package name */
                Object f85954c;

                /* renamed from: d  reason: collision with root package name */
                /* synthetic */ Object f85955d;

                /* renamed from: e  reason: collision with root package name */
                final /* synthetic */ C0739a<T> f85956e;

                /* renamed from: f  reason: collision with root package name */
                int f85957f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                b(C0739a<? super T> c0739a, Continuation<? super b> continuation) {
                    super(continuation);
                    this.f85956e = c0739a;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    this.f85955d = obj;
                    this.f85957f |= Integer.MIN_VALUE;
                    return this.f85956e.emit(null, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            C0739a(Ref.ObjectRef<j2> objectRef, s0 s0Var, i<T, R> iVar, kotlinx.coroutines.flow.j<? super R> jVar) {
                this.f85944a = objectRef;
                this.f85945b = s0Var;
                this.f85946c = iVar;
                this.f85947d = jVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
            @Override // kotlinx.coroutines.flow.j
            @m8.h
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object emit(T r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
                /*
                    r7 = this;
                    boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.i.a.C0739a.b
                    if (r0 == 0) goto L13
                    r0 = r9
                    kotlinx.coroutines.flow.internal.i$a$a$b r0 = (kotlinx.coroutines.flow.internal.i.a.C0739a.b) r0
                    int r1 = r0.f85957f
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f85957f = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.internal.i$a$a$b r0 = new kotlinx.coroutines.flow.internal.i$a$a$b
                    r0.<init>(r7, r9)
                L18:
                    java.lang.Object r9 = r0.f85955d
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.f85957f
                    r3 = 1
                    if (r2 == 0) goto L3b
                    if (r2 != r3) goto L33
                    java.lang.Object r8 = r0.f85954c
                    kotlinx.coroutines.j2 r8 = (kotlinx.coroutines.j2) r8
                    java.lang.Object r8 = r0.f85953b
                    java.lang.Object r0 = r0.f85952a
                    kotlinx.coroutines.flow.internal.i$a$a r0 = (kotlinx.coroutines.flow.internal.i.a.C0739a) r0
                    kotlin.ResultKt.throwOnFailure(r9)
                    goto L5f
                L33:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r9)
                    throw r8
                L3b:
                    kotlin.ResultKt.throwOnFailure(r9)
                    kotlin.jvm.internal.Ref$ObjectRef<kotlinx.coroutines.j2> r9 = r7.f85944a
                    T r9 = r9.element
                    kotlinx.coroutines.j2 r9 = (kotlinx.coroutines.j2) r9
                    if (r9 != 0) goto L48
                L46:
                    r0 = r7
                    goto L5f
                L48:
                    kotlinx.coroutines.flow.internal.ChildCancelledException r2 = new kotlinx.coroutines.flow.internal.ChildCancelledException
                    r2.<init>()
                    r9.d(r2)
                    r0.f85952a = r7
                    r0.f85953b = r8
                    r0.f85954c = r9
                    r0.f85957f = r3
                    java.lang.Object r9 = r9.X(r0)
                    if (r9 != r1) goto L46
                    return r1
                L5f:
                    kotlin.jvm.internal.Ref$ObjectRef<kotlinx.coroutines.j2> r9 = r0.f85944a
                    kotlinx.coroutines.s0 r1 = r0.f85945b
                    r2 = 0
                    kotlinx.coroutines.CoroutineStart r3 = kotlinx.coroutines.CoroutineStart.UNDISPATCHED
                    kotlinx.coroutines.flow.internal.i$a$a$a r4 = new kotlinx.coroutines.flow.internal.i$a$a$a
                    kotlinx.coroutines.flow.internal.i<T, R> r5 = r0.f85946c
                    kotlinx.coroutines.flow.j<R> r0 = r0.f85947d
                    r6 = 0
                    r4.<init>(r5, r0, r8, r6)
                    r5 = 1
                    kotlinx.coroutines.j2 r8 = kotlinx.coroutines.j.e(r1, r2, r3, r4, r5, r6)
                    r9.element = r8
                    kotlin.Unit r8 = kotlin.Unit.INSTANCE
                    return r8
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.i.a.C0739a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(i<T, R> iVar, kotlinx.coroutines.flow.j<? super R> jVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f85942c = iVar;
            this.f85943d = jVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f85942c, this.f85943d, continuation);
            aVar.f85941b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85940a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                i<T, R> iVar = this.f85942c;
                kotlinx.coroutines.flow.i<S> iVar2 = iVar.f85935d;
                C0739a c0739a = new C0739a(objectRef, (s0) this.f85941b, iVar, this.f85943d);
                this.f85940a = 1;
                if (iVar2.collect(c0739a, this) == coroutine_suspended) {
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

    public /* synthetic */ i(Function3 function3, kotlinx.coroutines.flow.i iVar, CoroutineContext coroutineContext, int i4, BufferOverflow bufferOverflow, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(function3, iVar, (i10 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i10 & 8) != 0 ? -2 : i4, (i10 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected d<R> i(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return new i(this.f85939e, this.f85935d, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.g
    @m8.h
    protected Object r(@m8.g kotlinx.coroutines.flow.j<? super R> jVar, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object g4 = t0.g(new a(this, jVar, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(@m8.g Function3<? super kotlinx.coroutines.flow.j<? super R>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, @m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        super(iVar, coroutineContext, i4, bufferOverflow);
        this.f85939e = function3;
    }
}
