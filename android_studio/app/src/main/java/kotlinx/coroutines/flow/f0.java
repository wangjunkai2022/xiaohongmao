package kotlinx.coroutines.flow;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* compiled from: SharingStarted.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\t\u001a\u00020\bH\u0016¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/flow/f0;", "Lkotlinx/coroutines/flow/c0;", "Lkotlinx/coroutines/flow/h0;", "", "subscriptionCount", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/SharingCommand;", "a", "", "toString", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class f0 implements c0 {

    /* compiled from: SharingStarted.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/j;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedLazily$command$1", f = "SharingStarted.kt", i = {}, l = {155}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<j<? super SharingCommand>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85861a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f85862b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h0<Integer> f85863c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharingStarted.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "count", "", "a", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0})
        /* renamed from: kotlinx.coroutines.flow.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0735a<T> implements j, SuspendFunction {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Ref.BooleanRef f85864a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ j<SharingCommand> f85865b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: SharingStarted.kt */
            @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
            @DebugMetadata(c = "kotlinx.coroutines.flow.StartedLazily$command$1$1", f = "SharingStarted.kt", i = {}, l = {158}, m = "emit", n = {}, s = {})
            /* renamed from: kotlinx.coroutines.flow.f0$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public static final class C0736a extends ContinuationImpl {

                /* renamed from: a  reason: collision with root package name */
                /* synthetic */ Object f85866a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ C0735a<T> f85867b;

                /* renamed from: c  reason: collision with root package name */
                int f85868c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C0736a(C0735a<? super T> c0735a, Continuation<? super C0736a> continuation) {
                    super(continuation);
                    this.f85867b = c0735a;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    this.f85866a = obj;
                    this.f85868c |= Integer.MIN_VALUE;
                    return this.f85867b.a(0, this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            C0735a(Ref.BooleanRef booleanRef, j<? super SharingCommand> jVar) {
                this.f85864a = booleanRef;
                this.f85865b = jVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
            @m8.h
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object a(int r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
                /*
                    r4 = this;
                    boolean r0 = r6 instanceof kotlinx.coroutines.flow.f0.a.C0735a.C0736a
                    if (r0 == 0) goto L13
                    r0 = r6
                    kotlinx.coroutines.flow.f0$a$a$a r0 = (kotlinx.coroutines.flow.f0.a.C0735a.C0736a) r0
                    int r1 = r0.f85868c
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f85868c = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.f0$a$a$a r0 = new kotlinx.coroutines.flow.f0$a$a$a
                    r0.<init>(r4, r6)
                L18:
                    java.lang.Object r6 = r0.f85866a
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.f85868c
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.ResultKt.throwOnFailure(r6)
                    goto L4b
                L29:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L31:
                    kotlin.ResultKt.throwOnFailure(r6)
                    if (r5 <= 0) goto L4e
                    kotlin.jvm.internal.Ref$BooleanRef r5 = r4.f85864a
                    boolean r6 = r5.element
                    if (r6 != 0) goto L4e
                    r5.element = r3
                    kotlinx.coroutines.flow.j<kotlinx.coroutines.flow.SharingCommand> r5 = r4.f85865b
                    kotlinx.coroutines.flow.SharingCommand r6 = kotlinx.coroutines.flow.SharingCommand.START
                    r0.f85868c = r3
                    java.lang.Object r5 = r5.emit(r6, r0)
                    if (r5 != r1) goto L4b
                    return r1
                L4b:
                    kotlin.Unit r5 = kotlin.Unit.INSTANCE
                    return r5
                L4e:
                    kotlin.Unit r5 = kotlin.Unit.INSTANCE
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.f0.a.C0735a.a(int, kotlin.coroutines.Continuation):java.lang.Object");
            }

            @Override // kotlinx.coroutines.flow.j
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                return a(((Number) obj).intValue(), continuation);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(h0<Integer> h0Var, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f85863c = h0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f85863c, continuation);
            aVar.f85862b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g j<? super SharingCommand> jVar, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85861a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                h0<Integer> h0Var = this.f85863c;
                C0735a c0735a = new C0735a(booleanRef, (j) this.f85862b);
                this.f85861a = 1;
                if (h0Var.collect(c0735a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }
    }

    @Override // kotlinx.coroutines.flow.c0
    @m8.g
    public i<SharingCommand> a(@m8.g h0<Integer> h0Var) {
        return k.I0(new a(h0Var, null));
    }

    @m8.g
    public String toString() {
        return "SharingStarted.Lazily";
    }
}
