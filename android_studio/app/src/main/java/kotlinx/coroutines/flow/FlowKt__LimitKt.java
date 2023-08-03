package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a$\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002\u001aJ\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a$\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u0002\u001a+\u0010\u0010\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u000e\u001a\u00028\u0000H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001aJ\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\"\u0010\t\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u000b\u001ar\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0013*\b\u0012\u0004\u0012\u00028\u00000\u00012D\b\u0001\u0010\u0018\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\r\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0014¢\u0006\u0002\b\u0017ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001aX\u0010\u001b\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000123\b\u0004\u0010\t\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0080Hø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "", "count", "d", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "predicate", "e", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "g", "Lkotlinx/coroutines/flow/j;", "value", "", "f", "(Lkotlinx/coroutines/flow/j;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "R", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "Lkotlin/ExtensionFunctionType;", "transform", ContextChain.TAG_INFRA, "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "b", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__LimitKt {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Limit.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", i = {0}, l = {137}, m = "collectWhile", n = {"collector"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class a<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85456a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85457b;

        /* renamed from: c  reason: collision with root package name */
        int f85458c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85457b = obj;
            this.f85458c |= Integer.MIN_VALUE;
            return FlowKt__LimitKt.b(null, null, this);
        }
    }

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements i<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f85459a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f85460b;

        public b(i iVar, int i4) {
            this.f85459a = iVar;
            this.f85460b = i4;
        }

        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object collect = this.f85459a.collect(new c(new Ref.IntRef(), this.f85460b, jVar), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return collect == coroutine_suspended ? collect : Unit.INSTANCE;
        }
    }

    /* compiled from: Limit.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class c<T> implements j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f85461a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f85462b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ j<T> f85463c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Limit.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$drop$2$1", f = "Limit.kt", i = {}, l = {25}, m = "emit", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f85464a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ c<T> f85465b;

            /* renamed from: c  reason: collision with root package name */
            int f85466c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(c<? super T> cVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85465b = cVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85464a = obj;
                this.f85466c |= Integer.MIN_VALUE;
                return this.f85465b.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        c(Ref.IntRef intRef, int i4, j<? super T> jVar) {
            this.f85461a = intRef;
            this.f85462b = i4;
            this.f85463c = jVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt.c.a
                if (r0 == 0) goto L13
                r0 = r7
                kotlinx.coroutines.flow.FlowKt__LimitKt$c$a r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt.c.a) r0
                int r1 = r0.f85466c
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85466c = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__LimitKt$c$a r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$c$a
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.f85464a
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85466c
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.ResultKt.throwOnFailure(r7)
                goto L47
            L29:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L31:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.jvm.internal.Ref$IntRef r7 = r5.f85461a
                int r2 = r7.element
                int r4 = r5.f85462b
                if (r2 < r4) goto L4a
                kotlinx.coroutines.flow.j<T> r7 = r5.f85463c
                r0.f85466c = r3
                java.lang.Object r6 = r7.emit(r6, r0)
                if (r6 != r1) goto L47
                return r1
            L47:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            L4a:
                int r2 = r2 + r3
                r7.element = r2
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.c.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d implements i<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f85472a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f85473b;

        public d(i iVar, Function2 function2) {
            this.f85472a = iVar;
            this.f85473b = function2;
        }

        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object collect = this.f85472a.collect(new e(new Ref.BooleanRef(), jVar, this.f85473b), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return collect == coroutine_suspended ? collect : Unit.INSTANCE;
        }
    }

    /* compiled from: Limit.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    static final class e<T> implements j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.BooleanRef f85474a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ j<T> f85475b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function2<T, Continuation<? super Boolean>, Object> f85476c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Limit.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", i = {1, 1}, l = {37, 38, 40}, m = "emit", n = {"this", "value"}, s = {"L$0", "L$1"})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            Object f85477a;

            /* renamed from: b  reason: collision with root package name */
            Object f85478b;

            /* renamed from: c  reason: collision with root package name */
            /* synthetic */ Object f85479c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ e<T> f85480d;

            /* renamed from: e  reason: collision with root package name */
            int f85481e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(e<? super T> eVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85480d = eVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85479c = obj;
                this.f85481e |= Integer.MIN_VALUE;
                return this.f85480d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        e(Ref.BooleanRef booleanRef, j<? super T> jVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
            this.f85474a = booleanRef;
            this.f85475b = jVar;
            this.f85476c = function2;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x008b  */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt.e.a
                if (r0 == 0) goto L13
                r0 = r8
                kotlinx.coroutines.flow.FlowKt__LimitKt$e$a r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt.e.a) r0
                int r1 = r0.f85481e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85481e = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__LimitKt$e$a r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$e$a
                r0.<init>(r6, r8)
            L18:
                java.lang.Object r8 = r0.f85479c
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85481e
                r3 = 3
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L45
                if (r2 == r5) goto L41
                if (r2 == r4) goto L37
                if (r2 != r3) goto L2f
                kotlin.ResultKt.throwOnFailure(r8)
                goto L88
            L2f:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L37:
                java.lang.Object r7 = r0.f85478b
                java.lang.Object r2 = r0.f85477a
                kotlinx.coroutines.flow.FlowKt__LimitKt$e r2 = (kotlinx.coroutines.flow.FlowKt__LimitKt.e) r2
                kotlin.ResultKt.throwOnFailure(r8)
                goto L6c
            L41:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L59
            L45:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlin.jvm.internal.Ref$BooleanRef r8 = r6.f85474a
                boolean r8 = r8.element
                if (r8 == 0) goto L5c
                kotlinx.coroutines.flow.j<T> r8 = r6.f85475b
                r0.f85481e = r5
                java.lang.Object r7 = r8.emit(r7, r0)
                if (r7 != r1) goto L59
                return r1
            L59:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            L5c:
                kotlin.jvm.functions.Function2<T, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r8 = r6.f85476c
                r0.f85477a = r6
                r0.f85478b = r7
                r0.f85481e = r4
                java.lang.Object r8 = r8.invoke(r7, r0)
                if (r8 != r1) goto L6b
                return r1
            L6b:
                r2 = r6
            L6c:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 != 0) goto L8b
                kotlin.jvm.internal.Ref$BooleanRef r8 = r2.f85474a
                r8.element = r5
                kotlinx.coroutines.flow.j<T> r8 = r2.f85475b
                r2 = 0
                r0.f85477a = r2
                r0.f85478b = r2
                r0.f85481e = r3
                java.lang.Object r7 = r8.emit(r7, r0)
                if (r7 != r1) goto L88
                return r1
            L88:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            L8b:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.e.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Limit.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt", f = "Limit.kt", i = {0}, l = {73}, m = "emitAbort$FlowKt__LimitKt", n = {"$this$emitAbort"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class f<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85482a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85483b;

        /* renamed from: c  reason: collision with root package name */
        int f85484c;

        f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85483b = obj;
            this.f85484c |= Integer.MIN_VALUE;
            return FlowKt__LimitKt.f(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Limit.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class g<T> implements j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.IntRef f85485a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f85486b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ j<T> f85487c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Limit.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$take$2$1", f = "Limit.kt", i = {}, l = {61, 63}, m = "emit", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f85488a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ g<T> f85489b;

            /* renamed from: c  reason: collision with root package name */
            int f85490c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(g<? super T> gVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85489b = gVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85488a = obj;
                this.f85490c |= Integer.MIN_VALUE;
                return this.f85489b.emit(null, this);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        public g(Ref.IntRef intRef, int i4, j<? super T> jVar) {
            this.f85485a = intRef;
            this.f85486b = i4;
            this.f85487c = jVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt.g.a
                if (r0 == 0) goto L13
                r0 = r7
                kotlinx.coroutines.flow.FlowKt__LimitKt$g$a r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt.g.a) r0
                int r1 = r0.f85490c
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85490c = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__LimitKt$g$a r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$g$a
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.f85488a
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85490c
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L38
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                kotlin.ResultKt.throwOnFailure(r7)
                goto L5f
            L2c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L34:
                kotlin.ResultKt.throwOnFailure(r7)
                goto L51
            L38:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlin.jvm.internal.Ref$IntRef r7 = r5.f85485a
                int r2 = r7.element
                int r2 = r2 + r4
                r7.element = r2
                int r7 = r5.f85486b
                if (r2 >= r7) goto L54
                kotlinx.coroutines.flow.j<T> r7 = r5.f85487c
                r0.f85490c = r4
                java.lang.Object r6 = r7.emit(r6, r0)
                if (r6 != r1) goto L51
                return r1
            L51:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            L54:
                kotlinx.coroutines.flow.j<T> r7 = r5.f85487c
                r0.f85490c = r3
                java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt__LimitKt.a(r7, r6, r0)
                if (r6 != r1) goto L5f
                return r1
            L5f:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.g.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object b(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt.a
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LimitKt$a r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt.a) r0
            int r1 = r0.f85458c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85458c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$a r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85457b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85458c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f85456a
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1 r4 = (kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1) r4
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L4c
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1 r6 = new kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1
            r6.<init>(r5)
            r0.f85456a = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4a
            r0.f85458c = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4a
            java.lang.Object r4 = r4.collect(r6, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L4a
            if (r4 != r1) goto L4f
            return r1
        L4a:
            r5 = move-exception
            r4 = r6
        L4c:
            kotlinx.coroutines.flow.internal.o.b(r5, r4)
        L4f:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.b(kotlinx.coroutines.flow.i, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final <T> Object c(i<? extends T> iVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1 = new FlowKt__LimitKt$collectWhile$collector$1(function2);
        try {
            InlineMarker.mark(0);
            iVar.collect(flowKt__LimitKt$collectWhile$collector$1, continuation);
            InlineMarker.mark(1);
        } catch (AbortFlowException e4) {
            kotlinx.coroutines.flow.internal.o.b(e4, flowKt__LimitKt$collectWhile$collector$1);
        }
        return Unit.INSTANCE;
    }

    @m8.g
    public static final <T> i<T> d(@m8.g i<? extends T> iVar, int i4) {
        if (i4 >= 0) {
            return new b(iVar, i4);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Drop count should be non-negative, but had ", Integer.valueOf(i4)).toString());
    }

    @m8.g
    public static final <T> i<T> e(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new d(iVar, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object f(kotlinx.coroutines.flow.j<? super T> r4, T r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt.f
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__LimitKt$f r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt.f) r0
            int r1 = r0.f85484c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85484c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$f r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$f
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85483b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85484c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2d:
            java.lang.Object r4 = r0.f85482a
            kotlinx.coroutines.flow.j r4 = (kotlinx.coroutines.flow.j) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L43
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.f85482a = r4
            r0.f85484c = r3
            java.lang.Object r5 = r4.emit(r5, r0)
            if (r5 != r1) goto L43
            return r1
        L43:
            kotlinx.coroutines.flow.internal.AbortFlowException r5 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r5.<init>(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt.f(kotlinx.coroutines.flow.j, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public static final <T> i<T> g(@m8.g i<? extends T> iVar, int i4) {
        if (i4 > 0) {
            return new FlowKt__LimitKt$take$$inlined$unsafeFlow$1(iVar, i4);
        }
        throw new IllegalArgumentException(("Requested element count " + i4 + " should be positive").toString());
    }

    @m8.g
    public static final <T> i<T> h(@m8.g i<? extends T> iVar, @m8.g Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return new FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1(iVar, function2);
    }

    @m8.g
    public static final <T, R> i<R> i(@m8.g i<? extends T> iVar, @BuilderInference @m8.g Function3<? super j<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3) {
        return k.I0(new FlowKt__LimitKt$transformWhile$1(iVar, function3, null));
    }
}
