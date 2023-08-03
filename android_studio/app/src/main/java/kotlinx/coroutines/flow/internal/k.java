package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.extractor.ts.h0;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.internal.u0;
import kotlinx.coroutines.o2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T1
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* compiled from: Combine.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0092\u0001\u0010\u000e\u001a\u00020\n\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0014\u0010\u0005\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u00032\u0016\u0010\u0007\u001a\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0018\u00010\u00030\u000629\u0010\r\u001a5\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\b¢\u0006\u0002\b\fH\u0081@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u001ap\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004\"\u0004\b\u0000\u0010\u0010\"\u0004\b\u0001\u0010\u0011\"\u0004\b\u0002\u0010\u00002\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042(\u0010\r\u001a$\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\bH\u0000ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015*\u001c\b\u0002\u0010\u0017\"\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u00162\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "", "Lkotlinx/coroutines/flow/i;", "flows", "Lkotlin/Function0;", "arrayFactory", "Lkotlin/Function3;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "transform", "a", "(Lkotlinx/coroutines/flow/j;[Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "T1", "T2", "flow", "flow2", "b", "(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "Lkotlin/collections/IndexedValue;", "Update", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class k {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Combine.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2", f = "Combine.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {57, 79, 82}, m = "invokeSuspend", n = {"latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch", "latestValues", "resultChannel", "lastReceivedEpoch", "remainingAbsentValues", "currentEpoch"}, s = {"L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1", "L$0", "L$1", "L$2", "I$0", "I$1"})
    /* loaded from: classes4.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        Object f85962a;

        /* renamed from: b  reason: collision with root package name */
        Object f85963b;

        /* renamed from: c  reason: collision with root package name */
        int f85964c;

        /* renamed from: d  reason: collision with root package name */
        int f85965d;

        /* renamed from: e  reason: collision with root package name */
        int f85966e;

        /* renamed from: f  reason: collision with root package name */
        private /* synthetic */ Object f85967f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i<T>[] f85968g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ Function0<T[]> f85969h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ Function3<kotlinx.coroutines.flow.j<? super R>, T[], Continuation<? super Unit>, Object> f85970i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.j<R> f85971j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Combine.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1", f = "Combine.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.internal.k$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0741a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f85972a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.i<T>[] f85973b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f85974c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ AtomicInteger f85975d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.channels.m<IndexedValue<Object>> f85976e;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Combine.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", "R", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.internal.k$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes4.dex */
            public static final class C0742a<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.channels.m<IndexedValue<Object>> f85977a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ int f85978b;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Combine.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", i = {}, l = {35, 36}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.internal.k$a$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes4.dex */
                public static final class C0743a extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f85979a;

                    /* renamed from: b  reason: collision with root package name */
                    final /* synthetic */ C0742a<T> f85980b;

                    /* renamed from: c  reason: collision with root package name */
                    int f85981c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0743a(C0742a<? super T> c0742a, Continuation<? super C0743a> continuation) {
                        super(continuation);
                        this.f85980b = c0742a;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f85979a = obj;
                        this.f85981c |= Integer.MIN_VALUE;
                        return this.f85980b.emit(null, this);
                    }
                }

                C0742a(kotlinx.coroutines.channels.m<IndexedValue<Object>> mVar, int i4) {
                    this.f85977a = mVar;
                    this.f85978b = i4;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x0055 A[RETURN] */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof kotlinx.coroutines.flow.internal.k.a.C0741a.C0742a.C0743a
                        if (r0 == 0) goto L13
                        r0 = r8
                        kotlinx.coroutines.flow.internal.k$a$a$a$a r0 = (kotlinx.coroutines.flow.internal.k.a.C0741a.C0742a.C0743a) r0
                        int r1 = r0.f85981c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f85981c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.k$a$a$a$a r0 = new kotlinx.coroutines.flow.internal.k$a$a$a$a
                        r0.<init>(r6, r8)
                    L18:
                        java.lang.Object r8 = r0.f85979a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f85981c
                        r3 = 2
                        r4 = 1
                        if (r2 == 0) goto L38
                        if (r2 == r4) goto L34
                        if (r2 != r3) goto L2c
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L56
                    L2c:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L34:
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L4d
                    L38:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.channels.m<kotlin.collections.IndexedValue<java.lang.Object>> r8 = r6.f85977a
                        kotlin.collections.IndexedValue r2 = new kotlin.collections.IndexedValue
                        int r5 = r6.f85978b
                        r2.<init>(r5, r7)
                        r0.f85981c = r4
                        java.lang.Object r7 = r8.send(r2, r0)
                        if (r7 != r1) goto L4d
                        return r1
                    L4d:
                        r0.f85981c = r3
                        java.lang.Object r7 = kotlinx.coroutines.z3.a(r0)
                        if (r7 != r1) goto L56
                        return r1
                    L56:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.k.a.C0741a.C0742a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0741a(kotlinx.coroutines.flow.i<? extends T>[] iVarArr, int i4, AtomicInteger atomicInteger, kotlinx.coroutines.channels.m<IndexedValue<Object>> mVar, Continuation<? super C0741a> continuation) {
                super(2, continuation);
                this.f85973b = iVarArr;
                this.f85974c = i4;
                this.f85975d = atomicInteger;
                this.f85976e = mVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C0741a(this.f85973b, this.f85974c, this.f85975d, this.f85976e, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0741a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                AtomicInteger atomicInteger;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f85972a;
                try {
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        kotlinx.coroutines.flow.i[] iVarArr = this.f85973b;
                        int i10 = this.f85974c;
                        kotlinx.coroutines.flow.i iVar = iVarArr[i10];
                        C0742a c0742a = new C0742a(this.f85976e, i10);
                        this.f85972a = 1;
                        if (iVar.collect(c0742a, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i4 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    if (atomicInteger.decrementAndGet() == 0) {
                        j0.a.a(this.f85976e, null, 1, null);
                    }
                    return Unit.INSTANCE;
                } finally {
                    if (this.f85975d.decrementAndGet() == 0) {
                        j0.a.a(this.f85976e, null, 1, null);
                    }
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.i<? extends T>[] iVarArr, Function0<T[]> function0, Function3<? super kotlinx.coroutines.flow.j<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, kotlinx.coroutines.flow.j<? super R> jVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f85968g = iVarArr;
            this.f85969h = function0;
            this.f85970i = function3;
            this.f85971j = jVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f85968g, this.f85969h, this.f85970i, this.f85971j, continuation);
            aVar.f85967f = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00ed A[LOOP:0: B:28:0x00ed->B:35:0x0111, LOOP_START, PHI: r3 r10 
          PHI: (r3v2 int) = (r3v1 int), (r3v3 int) binds: [B:25:0x00e8, B:35:0x0111] A[DONT_GENERATE, DONT_INLINE]
          PHI: (r10v5 kotlin.collections.IndexedValue) = (r10v4 kotlin.collections.IndexedValue), (r10v18 kotlin.collections.IndexedValue) binds: [B:25:0x00e8, B:35:0x0111] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Type inference failed for: r11v1, types: [kotlinx.coroutines.flow.i<T>[], kotlinx.coroutines.flow.i[]] */
        /* JADX WARN: Type inference failed for: r2v12, types: [int] */
        /* JADX WARN: Type inference failed for: r2v7, types: [int] */
        /* JADX WARN: Type inference failed for: r2v9, types: [int] */
        /* JADX WARN: Type inference failed for: r7v0, types: [kotlinx.coroutines.flow.i<T>[]] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0136 -> B:20:0x00c8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x016b -> B:46:0x0167). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r25) {
            /*
                Method dump skipped, instructions count: 369
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.k.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements kotlinx.coroutines.flow.i<R> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i f85982a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i f85983b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function3 f85984c;

        public b(kotlinx.coroutines.flow.i iVar, kotlinx.coroutines.flow.i iVar2, Function3 function3) {
            this.f85982a = iVar;
            this.f85983b = iVar2;
            this.f85984c = function3;
        }

        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g kotlinx.coroutines.flow.j<? super R> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object g4 = t0.g(new c(jVar, this.f85982a, this.f85983b, this.f85984c, null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
        }
    }

    /* compiled from: Combine.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0}, l = {h0.G}, m = "invokeSuspend", n = {"second"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85985a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f85986b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.j<R> f85987c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i<T2> f85988d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i<T1> f85989e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f85990f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Combine.kt */
        @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "it", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class a extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c0 f85991a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.j<R> f85992b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(c0 c0Var, kotlinx.coroutines.flow.j<? super R> jVar) {
                super(1);
                this.f85991a = c0Var;
                this.f85992b = jVar;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.h Throwable th) {
                if (this.f85991a.a()) {
                    this.f85991a.d(new AbortFlowException(this.f85992b));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Combine.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "", "it", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {h0.I}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class b extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f85993a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.i<T1> f85994b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ CoroutineContext f85995c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Object f85996d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ f0<Object> f85997e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.j<R> f85998f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f85999g;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Combine.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* loaded from: classes4.dex */
            public static final class a<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ CoroutineContext f86000a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Object f86001b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ f0<Object> f86002c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j<R> f86003d;

                /* renamed from: e  reason: collision with root package name */
                final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f86004e;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Combine.kt */
                @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "", "it", "<anonymous>"}, k = 3, mv = {1, 6, 0})
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {132, h0.J, h0.J}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.internal.k$c$b$a$a  reason: collision with other inner class name */
                /* loaded from: classes4.dex */
                public static final class C0744a extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

                    /* renamed from: a  reason: collision with root package name */
                    Object f86005a;

                    /* renamed from: b  reason: collision with root package name */
                    int f86006b;

                    /* renamed from: c  reason: collision with root package name */
                    final /* synthetic */ f0<Object> f86007c;

                    /* renamed from: d  reason: collision with root package name */
                    final /* synthetic */ kotlinx.coroutines.flow.j<R> f86008d;

                    /* renamed from: e  reason: collision with root package name */
                    final /* synthetic */ Function3<T1, T2, Continuation<? super R>, Object> f86009e;

                    /* renamed from: f  reason: collision with root package name */
                    final /* synthetic */ T1 f86010f;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0744a(f0<? extends Object> f0Var, kotlinx.coroutines.flow.j<? super R> jVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, T1 t12, Continuation<? super C0744a> continuation) {
                        super(2, continuation);
                        this.f86007c = f0Var;
                        this.f86008d = jVar;
                        this.f86009e = function3;
                        this.f86010f = t12;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.g
                    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                        return new C0744a(this.f86007c, this.f86008d, this.f86009e, this.f86010f, continuation);
                    }

                    @m8.h
                    public final Object h(@m8.g Unit unit, @m8.h Continuation<? super Unit> continuation) {
                        return ((C0744a) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                        return h(unit, continuation);
                    }

                    /* JADX WARN: Removed duplicated region for block: B:29:0x006e A[RETURN] */
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
                            int r1 = r8.f86006b
                            r2 = 0
                            r3 = 3
                            r4 = 2
                            r5 = 1
                            if (r1 == 0) goto L30
                            if (r1 == r5) goto L26
                            if (r1 == r4) goto L1e
                            if (r1 != r3) goto L16
                            kotlin.ResultKt.throwOnFailure(r9)
                            goto L6f
                        L16:
                            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            r9.<init>(r0)
                            throw r9
                        L1e:
                            java.lang.Object r1 = r8.f86005a
                            kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                            kotlin.ResultKt.throwOnFailure(r9)
                            goto L64
                        L26:
                            kotlin.ResultKt.throwOnFailure(r9)
                            kotlinx.coroutines.channels.q r9 = (kotlinx.coroutines.channels.q) r9
                            java.lang.Object r9 = r9.o()
                            goto L3e
                        L30:
                            kotlin.ResultKt.throwOnFailure(r9)
                            kotlinx.coroutines.channels.f0<java.lang.Object> r9 = r8.f86007c
                            r8.f86006b = r5
                            java.lang.Object r9 = r9.x(r8)
                            if (r9 != r0) goto L3e
                            return r0
                        L3e:
                            kotlinx.coroutines.flow.j<R> r1 = r8.f86008d
                            boolean r5 = r9 instanceof kotlinx.coroutines.channels.q.c
                            if (r5 == 0) goto L50
                            java.lang.Throwable r9 = kotlinx.coroutines.channels.q.f(r9)
                            if (r9 != 0) goto L4f
                            kotlinx.coroutines.flow.internal.AbortFlowException r9 = new kotlinx.coroutines.flow.internal.AbortFlowException
                            r9.<init>(r1)
                        L4f:
                            throw r9
                        L50:
                            kotlin.jvm.functions.Function3<T1, T2, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r5 = r8.f86009e
                            T1 r6 = r8.f86010f
                            kotlinx.coroutines.internal.p0 r7 = kotlinx.coroutines.flow.internal.s.f86031a
                            if (r9 != r7) goto L59
                            r9 = r2
                        L59:
                            r8.f86005a = r1
                            r8.f86006b = r4
                            java.lang.Object r9 = r5.invoke(r6, r9, r8)
                            if (r9 != r0) goto L64
                            return r0
                        L64:
                            r8.f86005a = r2
                            r8.f86006b = r3
                            java.lang.Object r9 = r1.emit(r9, r8)
                            if (r9 != r0) goto L6f
                            return r0
                        L6f:
                            kotlin.Unit r9 = kotlin.Unit.INSTANCE
                            return r9
                        */
                        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.k.c.b.a.C0744a.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Combine.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1", f = "Combine.kt", i = {}, l = {131}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.internal.k$c$b$a$b  reason: collision with other inner class name */
                /* loaded from: classes4.dex */
                public static final class C0745b extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f86011a;

                    /* renamed from: b  reason: collision with root package name */
                    final /* synthetic */ a<T> f86012b;

                    /* renamed from: c  reason: collision with root package name */
                    int f86013c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0745b(a<? super T> aVar, Continuation<? super C0745b> continuation) {
                        super(continuation);
                        this.f86012b = aVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f86011a = obj;
                        this.f86013c |= Integer.MIN_VALUE;
                        return this.f86012b.emit(null, this);
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                a(CoroutineContext coroutineContext, Object obj, f0<? extends Object> f0Var, kotlinx.coroutines.flow.j<? super R> jVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
                    this.f86000a = coroutineContext;
                    this.f86001b = obj;
                    this.f86002c = f0Var;
                    this.f86003d = jVar;
                    this.f86004e = function3;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T1 r13, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r14) {
                    /*
                        r12 = this;
                        boolean r0 = r14 instanceof kotlinx.coroutines.flow.internal.k.c.b.a.C0745b
                        if (r0 == 0) goto L13
                        r0 = r14
                        kotlinx.coroutines.flow.internal.k$c$b$a$b r0 = (kotlinx.coroutines.flow.internal.k.c.b.a.C0745b) r0
                        int r1 = r0.f86013c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f86013c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.k$c$b$a$b r0 = new kotlinx.coroutines.flow.internal.k$c$b$a$b
                        r0.<init>(r12, r14)
                    L18:
                        java.lang.Object r14 = r0.f86011a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f86013c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r14)
                        goto L51
                    L29:
                        java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                        java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
                        r13.<init>(r14)
                        throw r13
                    L31:
                        kotlin.ResultKt.throwOnFailure(r14)
                        kotlin.coroutines.CoroutineContext r14 = r12.f86000a
                        kotlin.Unit r2 = kotlin.Unit.INSTANCE
                        java.lang.Object r4 = r12.f86001b
                        kotlinx.coroutines.flow.internal.k$c$b$a$a r11 = new kotlinx.coroutines.flow.internal.k$c$b$a$a
                        kotlinx.coroutines.channels.f0<java.lang.Object> r6 = r12.f86002c
                        kotlinx.coroutines.flow.j<R> r7 = r12.f86003d
                        kotlin.jvm.functions.Function3<T1, T2, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r8 = r12.f86004e
                        r10 = 0
                        r5 = r11
                        r9 = r13
                        r5.<init>(r6, r7, r8, r9, r10)
                        r0.f86013c = r3
                        java.lang.Object r13 = kotlinx.coroutines.flow.internal.e.c(r14, r2, r4, r11, r0)
                        if (r13 != r1) goto L51
                        return r1
                    L51:
                        kotlin.Unit r13 = kotlin.Unit.INSTANCE
                        return r13
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.k.c.b.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(kotlinx.coroutines.flow.i<? extends T1> iVar, CoroutineContext coroutineContext, Object obj, f0<? extends Object> f0Var, kotlinx.coroutines.flow.j<? super R> jVar, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f85994b = iVar;
                this.f85995c = coroutineContext;
                this.f85996d = obj;
                this.f85997e = f0Var;
                this.f85998f = jVar;
                this.f85999g = function3;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new b(this.f85994b, this.f85995c, this.f85996d, this.f85997e, this.f85998f, this.f85999g, continuation);
            }

            @m8.h
            public final Object h(@m8.g Unit unit, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                return h(unit, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f85993a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    kotlinx.coroutines.flow.i<T1> iVar = this.f85994b;
                    a aVar = new a(this.f85995c, this.f85996d, this.f85997e, this.f85998f, this.f85999g);
                    this.f85993a = 1;
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

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Combine.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/channels/d0;", "", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1", f = "Combine.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.internal.k$c$c  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0746c extends SuspendLambda implements Function2<d0<? super Object>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f86014a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f86015b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.i<T2> f86016c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: Combine.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "", "T1", "T2", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
            /* renamed from: kotlinx.coroutines.flow.internal.k$c$c$a */
            /* loaded from: classes4.dex */
            public static final class a<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ d0<Object> f86017a;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: Combine.kt */
                @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1$1", f = "Combine.kt", i = {}, l = {93}, m = "emit", n = {}, s = {})
                /* renamed from: kotlinx.coroutines.flow.internal.k$c$c$a$a  reason: collision with other inner class name */
                /* loaded from: classes4.dex */
                public static final class C0747a extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f86018a;

                    /* renamed from: b  reason: collision with root package name */
                    final /* synthetic */ a<T> f86019b;

                    /* renamed from: c  reason: collision with root package name */
                    int f86020c;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0747a(a<? super T> aVar, Continuation<? super C0747a> continuation) {
                        super(continuation);
                        this.f86019b = aVar;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f86018a = obj;
                        this.f86020c |= Integer.MIN_VALUE;
                        return this.f86019b.emit(null, this);
                    }
                }

                a(d0<Object> d0Var) {
                    this.f86017a = d0Var;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object emit(T2 r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof kotlinx.coroutines.flow.internal.k.c.C0746c.a.C0747a
                        if (r0 == 0) goto L13
                        r0 = r6
                        kotlinx.coroutines.flow.internal.k$c$c$a$a r0 = (kotlinx.coroutines.flow.internal.k.c.C0746c.a.C0747a) r0
                        int r1 = r0.f86020c
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f86020c = r1
                        goto L18
                    L13:
                        kotlinx.coroutines.flow.internal.k$c$c$a$a r0 = new kotlinx.coroutines.flow.internal.k$c$c$a$a
                        r0.<init>(r4, r6)
                    L18:
                        java.lang.Object r6 = r0.f86018a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f86020c
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L47
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.d0<java.lang.Object> r6 = r4.f86017a
                        kotlinx.coroutines.channels.j0 r6 = r6.getChannel()
                        if (r5 != 0) goto L3e
                        kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
                    L3e:
                        r0.f86020c = r3
                        java.lang.Object r5 = r6.send(r5, r0)
                        if (r5 != r1) goto L47
                        return r1
                    L47:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.k.c.C0746c.a.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0746c(kotlinx.coroutines.flow.i<? extends T2> iVar, Continuation<? super C0746c> continuation) {
                super(2, continuation);
                this.f86016c = iVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0746c c0746c = new C0746c(this.f86016c, continuation);
                c0746c.f86015b = obj;
                return c0746c;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(d0<? super Object> d0Var, Continuation<? super Unit> continuation) {
                return invoke2((d0<Object>) d0Var, continuation);
            }

            @m8.h
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@m8.g d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0746c) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f86014a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    kotlinx.coroutines.flow.i<T2> iVar = this.f86016c;
                    a aVar = new a((d0) this.f86015b);
                    this.f86014a = 1;
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
        c(kotlinx.coroutines.flow.j<? super R> jVar, kotlinx.coroutines.flow.i<? extends T2> iVar, kotlinx.coroutines.flow.i<? extends T1> iVar2, Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f85987c = jVar;
            this.f85988d = iVar;
            this.f85989e = iVar2;
            this.f85990f = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            c cVar = new c(this.f85987c, this.f85988d, this.f85989e, this.f85990f, continuation);
            cVar.f85986b = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return invoke2(s0Var, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v12, types: [kotlinx.coroutines.channels.f0] */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.channels.f0] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            c0 c10;
            f0 f0Var;
            f0 f0Var2;
            CoroutineContext plus;
            Unit unit;
            b bVar;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            f0 f0Var3 = this.f85985a;
            try {
                if (f0Var3 != 0) {
                    if (f0Var3 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    f0Var2 = (f0) this.f85986b;
                    try {
                        ResultKt.throwOnFailure(obj);
                        f0Var3 = f0Var2;
                    } catch (AbortFlowException e4) {
                        e = e4;
                    }
                    f0.a.b(f0Var3, null, 1, null);
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f85986b;
                f0 f10 = b0.f(s0Var, null, 0, new C0746c(this.f85988d, null), 3, null);
                c10 = o2.c(null, 1, null);
                ((j0) f10).invokeOnClose(new a(c10, this.f85987c));
                try {
                    CoroutineContext coroutineContext = s0Var.getCoroutineContext();
                    Object b10 = u0.b(coroutineContext);
                    plus = s0Var.getCoroutineContext().plus(c10);
                    unit = Unit.INSTANCE;
                    bVar = new b(this.f85989e, coroutineContext, b10, f10, this.f85987c, this.f85990f, null);
                    this.f85986b = f10;
                    this.f85985a = 1;
                    f0Var = f10;
                } catch (AbortFlowException e10) {
                    e = e10;
                    f0Var = f10;
                } catch (Throwable th) {
                    th = th;
                    f0Var = f10;
                }
                try {
                } catch (AbortFlowException e11) {
                    e = e11;
                    f0Var2 = f0Var;
                    o.b(e, this.f85987c);
                    f0Var3 = f0Var2;
                    f0.a.b(f0Var3, null, 1, null);
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                    f0Var3 = f0Var;
                    f0.a.b(f0Var3, null, 1, null);
                    throw th;
                }
                if (e.d(plus, unit, null, bVar, this, 4, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                f0Var3 = f0Var;
                f0.a.b(f0Var3, null, 1, null);
                return Unit.INSTANCE;
                o.b(e, this.f85987c);
                f0Var3 = f0Var2;
                f0.a.b(f0Var3, null, 1, null);
                return Unit.INSTANCE;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @m8.h
    @PublishedApi
    public static final <R, T> Object a(@m8.g kotlinx.coroutines.flow.j<? super R> jVar, @m8.g kotlinx.coroutines.flow.i<? extends T>[] iVarArr, @m8.g Function0<T[]> function0, @m8.g Function3<? super kotlinx.coroutines.flow.j<? super R>, ? super T[], ? super Continuation<? super Unit>, ? extends Object> function3, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object a10 = n.a(new a(iVarArr, function0, function3, jVar, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return a10 == coroutine_suspended ? a10 : Unit.INSTANCE;
    }

    @m8.g
    public static final <T1, T2, R> kotlinx.coroutines.flow.i<R> b(@m8.g kotlinx.coroutines.flow.i<? extends T1> iVar, @m8.g kotlinx.coroutines.flow.i<? extends T2> iVar2, @m8.g Function3<? super T1, ? super T2, ? super Continuation<? super R>, ? extends Object> function3) {
        return new b(iVar2, iVar, function3);
    }
}
