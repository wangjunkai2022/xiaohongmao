package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.j2;

/* compiled from: Errors.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aj\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012B\u0010\f\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0002¢\u0006\u0002\b\u000bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001ae\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u0010\u001a\u00020\u000f23\b\u0002\u0010\u0013\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0011ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u007f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012W\u0010\u0013\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0016¢\u0006\u0002\b\u000bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001a3\u0010\u001b\u001a\u0004\u0018\u00010\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001b\u0010\u001f\u001a\u00020\u0012*\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 \u001a\u001d\u0010\"\u001a\u00020\u0012*\u00020\u00042\b\u0010!\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\"\u0010#\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/j;", "", "Lkotlin/ParameterName;", "name", "cause", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", com.alipay.sdk.packet.d.f6907q, "a", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "", "retries", "Lkotlin/Function2;", "", "predicate", "e", "(Lkotlinx/coroutines/flow/i;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "Lkotlin/Function4;", "attempt", "g", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/i;", "collector", "b", "(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "c", "(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)Z", "other", "d", "(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__ErrorsKt {

    /* compiled from: Errors.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", i = {0}, l = {156}, m = "catchImpl", n = {"fromDownstream"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class a<T> extends ContinuationImpl {

        /* renamed from: a */
        Object f85416a;

        /* renamed from: b */
        /* synthetic */ Object f85417b;

        /* renamed from: c */
        int f85418c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85417b = obj;
            this.f85418c |= Integer.MIN_VALUE;
            return k.v(null, null, this);
        }
    }

    /* compiled from: Errors.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class b<T> implements j, SuspendFunction {

        /* renamed from: a */
        final /* synthetic */ j<T> f85419a;

        /* renamed from: b */
        final /* synthetic */ Ref.ObjectRef<Throwable> f85420b;

        /* compiled from: Errors.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", i = {0}, l = {158}, m = "emit", n = {"this"}, s = {"L$0"})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a */
            Object f85421a;

            /* renamed from: b */
            /* synthetic */ Object f85422b;

            /* renamed from: c */
            final /* synthetic */ b<T> f85423c;

            /* renamed from: d */
            int f85424d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(b<? super T> bVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85423c = bVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85422b = obj;
                this.f85424d |= Integer.MIN_VALUE;
                return this.f85423c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        b(j<? super T> jVar, Ref.ObjectRef<Throwable> objectRef) {
            this.f85419a = jVar;
            this.f85420b = objectRef;
        }

        /* JADX WARN: Removed duplicated region for block: B:42:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0037  */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
            /*
                r4 = this;
                boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt.b.a
                if (r0 == 0) goto L13
                r0 = r6
                kotlinx.coroutines.flow.FlowKt__ErrorsKt$b$a r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt.b.a) r0
                int r1 = r0.f85424d
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85424d = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__ErrorsKt$b$a r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$b$a
                r0.<init>(r4, r6)
            L18:
                java.lang.Object r6 = r0.f85422b
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85424d
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                java.lang.Object r5 = r0.f85421a
                kotlinx.coroutines.flow.FlowKt__ErrorsKt$b r5 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt.b) r5
                kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2d
                goto L47
            L2d:
                r6 = move-exception
                goto L4c
            L2f:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L37:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlinx.coroutines.flow.j<T> r6 = r4.f85419a     // Catch: java.lang.Throwable -> L4a
                r0.f85421a = r4     // Catch: java.lang.Throwable -> L4a
                r0.f85424d = r3     // Catch: java.lang.Throwable -> L4a
                java.lang.Object r5 = r6.emit(r5, r0)     // Catch: java.lang.Throwable -> L4a
                if (r5 != r1) goto L47
                return r1
            L47:
                kotlin.Unit r5 = kotlin.Unit.INSTANCE
                return r5
            L4a:
                r6 = move-exception
                r5 = r4
            L4c:
                kotlin.jvm.internal.Ref$ObjectRef<java.lang.Throwable> r5 = r5.f85420b
                r5.element = r6
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt.b.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* compiled from: Errors.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$1", f = "Errors.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class c extends SuspendLambda implements Function2<Throwable, Continuation<? super Boolean>, Object> {

        /* renamed from: a */
        int f85425a;

        c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g Throwable th, @m8.h Continuation<? super Boolean> continuation) {
            return ((c) create(th, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f85425a == 0) {
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(true);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: Errors.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0007\u001a\u00020\u0006\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "", "cause", "", "attempt", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$retry$3", f = "Errors.kt", i = {}, l = {95}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class d extends SuspendLambda implements Function4<j<? super T>, Throwable, Long, Continuation<? super Boolean>, Object> {

        /* renamed from: a */
        int f85426a;

        /* renamed from: b */
        /* synthetic */ Object f85427b;

        /* renamed from: c */
        /* synthetic */ long f85428c;

        /* renamed from: d */
        final /* synthetic */ long f85429d;

        /* renamed from: e */
        final /* synthetic */ Function2<Throwable, Continuation<? super Boolean>, Object> f85430e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        d(long j4, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super d> continuation) {
            super(4, continuation);
            this.f85429d = j4;
            this.f85430e = function2;
        }

        @m8.h
        public final Object h(@m8.g j<? super T> jVar, @m8.g Throwable th, long j4, @m8.h Continuation<? super Boolean> continuation) {
            d dVar = new d(this.f85429d, this.f85430e, continuation);
            dVar.f85427b = th;
            dVar.f85428c = j4;
            return dVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function4
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Throwable th, Long l10, Continuation<? super Boolean> continuation) {
            return h((j) obj, th, l10.longValue(), continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:33:0x0037, code lost:
            if (((java.lang.Boolean) r8).booleanValue() != false) goto L8;
         */
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
                int r1 = r7.f85426a
                r2 = 1
                if (r1 == 0) goto L17
                if (r1 != r2) goto Lf
                kotlin.ResultKt.throwOnFailure(r8)
                goto L31
            Lf:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L17:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.Object r8 = r7.f85427b
                java.lang.Throwable r8 = (java.lang.Throwable) r8
                long r3 = r7.f85428c
                long r5 = r7.f85429d
                int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r1 >= 0) goto L3a
                kotlin.jvm.functions.Function2<java.lang.Throwable, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r1 = r7.f85430e
                r7.f85426a = r2
                java.lang.Object r8 = r1.invoke(r8, r7)
                if (r8 != r0) goto L31
                return r0
            L31:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 == 0) goto L3a
                goto L3b
            L3a:
                r2 = 0
            L3b:
                java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @m8.g
    public static final <T> i<T> a(@m8.g i<? extends T> iVar, @m8.g Function3<? super j<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(iVar, function3);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object b(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlinx.coroutines.flow.j<? super T> r5, @m8.g kotlin.coroutines.Continuation<? super java.lang.Throwable> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ErrorsKt.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$a r0 = (kotlinx.coroutines.flow.FlowKt__ErrorsKt.a) r0
            int r1 = r0.f85418c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85418c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$a r0 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85417b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85418c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f85416a
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L53
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            kotlinx.coroutines.flow.FlowKt__ErrorsKt$b r2 = new kotlinx.coroutines.flow.FlowKt__ErrorsKt$b     // Catch: java.lang.Throwable -> L51
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L51
            r0.f85416a = r6     // Catch: java.lang.Throwable -> L51
            r0.f85418c = r3     // Catch: java.lang.Throwable -> L51
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: java.lang.Throwable -> L51
            if (r4 != r1) goto L4f
            return r1
        L4f:
            r4 = 0
            return r4
        L51:
            r5 = move-exception
            r4 = r6
        L53:
            T r4 = r4.element
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            boolean r6 = d(r5, r4)
            if (r6 != 0) goto L76
            kotlin.coroutines.CoroutineContext r6 = r0.getContext()
            boolean r6 = c(r5, r6)
            if (r6 != 0) goto L76
            if (r4 != 0) goto L6a
            return r5
        L6a:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 == 0) goto L72
            kotlin.ExceptionsKt.addSuppressed(r4, r5)
            throw r4
        L72:
            kotlin.ExceptionsKt.addSuppressed(r5, r4)
            throw r5
        L76:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ErrorsKt.b(kotlinx.coroutines.flow.i, kotlinx.coroutines.flow.j, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final boolean c(Throwable th, CoroutineContext coroutineContext) {
        j2 j2Var = (j2) coroutineContext.get(j2.f86331k2);
        if (j2Var == null || !j2Var.isCancelled()) {
            return false;
        }
        return d(th, j2Var.A());
    }

    private static final boolean d(Throwable th, Throwable th2) {
        return th2 != null && Intrinsics.areEqual(th2, th);
    }

    @m8.g
    public static final <T> i<T> e(@m8.g i<? extends T> iVar, long j4, @m8.g Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        if (j4 > 0) {
            return k.x1(iVar, new d(j4, function2, null));
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive amount of retries, but had ", Long.valueOf(j4)).toString());
    }

    public static /* synthetic */ i f(i iVar, long j4, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = Long.MAX_VALUE;
        }
        if ((i4 & 2) != 0) {
            function2 = new c(null);
        }
        return k.v1(iVar, j4, function2);
    }

    @m8.g
    public static final <T> i<T> g(@m8.g i<? extends T> iVar, @m8.g Function4<? super j<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(iVar, function4);
    }
}
