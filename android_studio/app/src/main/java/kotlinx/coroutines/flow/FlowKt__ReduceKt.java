package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Reduce.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\u001au\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\u0001*\u00028\u0000*\b\u0012\u0004\u0012\u00028\u00010\u00022F\u0010\n\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0006\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a{\u0010\u0010\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0001\"\u0004\b\u0001\u0010\r*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u000e\u001a\u00028\u00012H\b\u0004\u0010\n\u001aB\b\u0001\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0004\u0012\b\b\u0005\u0012\u0004\b\b(\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0003H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a#\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a%\u0010\u0014\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0013\u001a#\u0010\u0015\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0013\u001aG\u0010\u0019\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\"\u0010\u0018\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0016H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a%\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0013\u001aI\u0010\u001c\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\"\u0010\u0018\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0016H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001a\u001a#\u0010\u001d\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u0013\u001a%\u0010\u001e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0013\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "accumulator", "value", "Lkotlin/coroutines/Continuation;", "", "operation", ContextChain.TAG_INFRA, "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "initial", "acc", "e", "(Lkotlinx/coroutines/flow/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "j", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "k", "a", "Lkotlin/Function2;", "", "predicate", "b", "(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "c", "d", "g", "h", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/flow/FlowKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class FlowKt__ReduceKt {

    /* compiled from: Limit.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements kotlinx.coroutines.flow.j<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f85553a;

        public a(Ref.ObjectRef objectRef) {
            this.f85553a = objectRef;
        }

        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            this.f85553a.element = t9;
            throw new AbortFlowException(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "first", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class b<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85554a;

        /* renamed from: b  reason: collision with root package name */
        Object f85555b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f85556c;

        /* renamed from: d  reason: collision with root package name */
        int f85557d;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85556c = obj;
            this.f85557d |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.t0(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0, 0}, l = {183}, m = "first", n = {"predicate", "result", "collector$iv"}, s = {"L$0", "L$1", "L$2"})
    /* loaded from: classes4.dex */
    public static final class c<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85558a;

        /* renamed from: b  reason: collision with root package name */
        Object f85559b;

        /* renamed from: c  reason: collision with root package name */
        Object f85560c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f85561d;

        /* renamed from: e  reason: collision with root package name */
        int f85562e;

        c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85561d = obj;
            this.f85562e |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.u0(null, null, this);
        }
    }

    /* compiled from: Limit.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d implements kotlinx.coroutines.flow.j<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f85563a;

        public d(Ref.ObjectRef objectRef) {
            this.f85563a = objectRef;
        }

        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            this.f85563a.element = t9;
            throw new AbortFlowException(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class e<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85564a;

        /* renamed from: b  reason: collision with root package name */
        Object f85565b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f85566c;

        /* renamed from: d  reason: collision with root package name */
        int f85567d;

        e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85566c = obj;
            this.f85567d |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.v0(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "firstOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class f<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85568a;

        /* renamed from: b  reason: collision with root package name */
        Object f85569b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f85570c;

        /* renamed from: d  reason: collision with root package name */
        int f85571d;

        f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85570c = obj;
            this.f85571d |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.w0(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {44}, m = "fold", n = {"accumulator"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class g<T, R> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85578a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85579b;

        /* renamed from: c  reason: collision with root package name */
        int f85580c;

        g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85579b = obj;
            this.f85580c |= Integer.MIN_VALUE;
            return FlowKt__ReduceKt.e(null, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {155}, m = "last", n = {"result"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class h<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85581a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85582b;

        /* renamed from: c  reason: collision with root package name */
        int f85583c;

        h(Continuation<? super h> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85582b = obj;
            this.f85583c |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.S0(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class i<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<Object> f85584a;

        i(Ref.ObjectRef<Object> objectRef) {
            this.f85584a = objectRef;
        }

        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public final Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            this.f85584a.element = t9;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {167}, m = "lastOrNull", n = {"result"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class j<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85585a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85586b;

        /* renamed from: c  reason: collision with root package name */
        int f85587c;

        j(Continuation<? super j> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85586b = obj;
            this.f85587c |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.T0(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "it", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class k<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<T> f85588a;

        k(Ref.ObjectRef<T> objectRef) {
            this.f85588a = objectRef;
        }

        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public final Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            this.f85588a.element = t9;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {22}, m = "reduce", n = {"accumulator"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class l<S, T extends S> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85589a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85590b;

        /* renamed from: c  reason: collision with root package name */
        int f85591c;

        l(Continuation<? super l> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85590b = obj;
            this.f85591c |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.s1(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u0002H\u0003H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class m<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<Object> f85592a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function3<S, T, Continuation<? super S>, Object> f85593b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Reduce.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$reduce$2", f = "Reduce.kt", i = {}, l = {25}, m = "emit", n = {}, s = {})
        /* loaded from: classes4.dex */
        public static final class a extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            Object f85594a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f85595b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ m<T> f85596c;

            /* renamed from: d  reason: collision with root package name */
            int f85597d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(m<? super T> mVar, Continuation<? super a> continuation) {
                super(continuation);
                this.f85596c = mVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85595b = obj;
                this.f85597d |= Integer.MIN_VALUE;
                return this.f85596c.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        m(Ref.ObjectRef<Object> objectRef, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3) {
            this.f85592a = objectRef;
            this.f85593b = function3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
        /* JADX WARN: Type inference failed for: r8v5 */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(T r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.m.a
                if (r0 == 0) goto L13
                r0 = r8
                kotlinx.coroutines.flow.FlowKt__ReduceKt$m$a r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.m.a) r0
                int r1 = r0.f85597d
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85597d = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.FlowKt__ReduceKt$m$a r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$m$a
                r0.<init>(r6, r8)
            L18:
                java.lang.Object r8 = r0.f85595b
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85597d
                r3 = 1
                if (r2 == 0) goto L35
                if (r2 != r3) goto L2d
                java.lang.Object r7 = r0.f85594a
                kotlin.jvm.internal.Ref$ObjectRef r7 = (kotlin.jvm.internal.Ref.ObjectRef) r7
                kotlin.ResultKt.throwOnFailure(r8)
                goto L50
            L2d:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L35:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r8 = r6.f85592a
                T r2 = r8.element
                kotlinx.coroutines.internal.p0 r4 = kotlinx.coroutines.flow.internal.s.f86031a
                if (r2 == r4) goto L53
                kotlin.jvm.functions.Function3<S, T, kotlin.coroutines.Continuation<? super S>, java.lang.Object> r4 = r6.f85593b
                r0.f85594a = r8
                r0.f85597d = r3
                java.lang.Object r7 = r4.invoke(r2, r7, r0)
                if (r7 != r1) goto L4d
                return r1
            L4d:
                r5 = r8
                r8 = r7
                r7 = r5
            L50:
                r5 = r8
                r8 = r7
                r7 = r5
            L53:
                r8.element = r7
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.m.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0}, l = {57}, m = "single", n = {"result"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class n<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85598a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85599b;

        /* renamed from: c  reason: collision with root package name */
        int f85600c;

        n(Continuation<? super n> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85599b = obj;
            this.f85600c |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.H1(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class o<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<Object> f85601a;

        o(Ref.ObjectRef<Object> objectRef) {
            this.f85601a = objectRef;
        }

        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public final Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            Ref.ObjectRef<Object> objectRef = this.f85601a;
            if (objectRef.element == kotlinx.coroutines.flow.internal.s.f86031a) {
                objectRef.element = t9;
                return Unit.INSTANCE;
            }
            throw new IllegalArgumentException("Flow has more than one element".toString());
        }
    }

    /* compiled from: Limit.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class p implements kotlinx.coroutines.flow.j<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef f85602a;

        public p(Ref.ObjectRef objectRef) {
            this.f85602a = objectRef;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [T, kotlinx.coroutines.internal.p0] */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            boolean z9;
            Ref.ObjectRef objectRef = this.f85602a;
            T t10 = objectRef.element;
            ?? r12 = kotlinx.coroutines.flow.internal.s.f86031a;
            if (t10 == r12) {
                objectRef.element = t9;
                z9 = true;
            } else {
                objectRef.element = r12;
                z9 = false;
            }
            if (z9) {
                return Unit.INSTANCE;
            }
            throw new AbortFlowException(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Reduce.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", i = {0, 0}, l = {183}, m = "singleOrNull", n = {"result", "collector$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class q<T> extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85603a;

        /* renamed from: b  reason: collision with root package name */
        Object f85604b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f85605c;

        /* renamed from: d  reason: collision with root package name */
        int f85606d;

        q(Continuation<? super q> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85605c = obj;
            this.f85606d |= Integer.MIN_VALUE;
            return kotlinx.coroutines.flow.k.I1(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object a(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.b
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$b r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.b) r0
            int r1 = r0.f85557d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85557d = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$b r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$b
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f85556c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85557d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f85555b
            kotlinx.coroutines.flow.FlowKt__ReduceKt$a r4 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.a) r4
            java.lang.Object r0 = r0.f85554a
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L31
            goto L62
        L31:
            r5 = move-exception
            goto L5f
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.flow.internal.s.f86031a
            r5.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$a r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$a
            r2.<init>(r5)
            r0.f85554a = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            r0.f85555b = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            r0.f85557d = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            if (r4 != r1) goto L59
            return r1
        L59:
            r0 = r5
            goto L62
        L5b:
            r4 = move-exception
            r0 = r5
            r5 = r4
            r4 = r2
        L5f:
            kotlinx.coroutines.flow.internal.o.b(r5, r4)
        L62:
            T r4 = r0.element
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
            if (r4 == r5) goto L69
            return r4
        L69:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Expected at least one element"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.a(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object b(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @m8.g kotlin.coroutines.Continuation<? super T> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.c
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ReduceKt$c r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.c) r0
            int r1 = r0.f85562e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85562e = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$c r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$c
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85561d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85562e
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r4 = r0.f85560c
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r4 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2) r4
            java.lang.Object r5 = r0.f85559b
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref.ObjectRef) r5
            java.lang.Object r0 = r0.f85558a
            kotlin.jvm.functions.Function2 r0 = (kotlin.jvm.functions.Function2) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L35
            goto L6a
        L35:
            r6 = move-exception
            goto L67
        L37:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3f:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.flow.internal.s.f86031a
            r6.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2 r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$first$$inlined$collectWhile$2
            r2.<init>(r5, r6)
            r0.f85558a = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L62
            r0.f85559b = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L62
            r0.f85560c = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L62
            r0.f85562e = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L62
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L62
            if (r4 != r1) goto L5f
            return r1
        L5f:
            r0 = r5
            r5 = r6
            goto L6a
        L62:
            r4 = move-exception
            r0 = r5
            r5 = r6
            r6 = r4
            r4 = r2
        L67:
            kotlinx.coroutines.flow.internal.o.b(r6, r4)
        L6a:
            T r4 = r5.element
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
            if (r4 == r5) goto L71
            return r4
        L71:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Expected at least one element matching the predicate "
            java.lang.String r5 = kotlin.jvm.internal.Intrinsics.stringPlus(r5, r0)
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.b(kotlinx.coroutines.flow.i, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object c(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.e
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$e r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.e) r0
            int r1 = r0.f85567d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85567d = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$e r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$e
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f85566c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85567d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f85565b
            kotlinx.coroutines.flow.FlowKt__ReduceKt$d r4 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.d) r4
            java.lang.Object r0 = r0.f85564a
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L31
            goto L5e
        L31:
            r5 = move-exception
            goto L5b
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.flow.FlowKt__ReduceKt$d r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$d
            r2.<init>(r5)
            r0.f85564a = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            r0.f85565b = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            r0.f85567d = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            if (r4 != r1) goto L55
            return r1
        L55:
            r0 = r5
            goto L5e
        L57:
            r4 = move-exception
            r0 = r5
            r5 = r4
            r4 = r2
        L5b:
            kotlinx.coroutines.flow.internal.o.b(r5, r4)
        L5e:
            T r4 = r0.element
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.c(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object d(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.jvm.functions.Function2<? super T, ? super kotlin.coroutines.Continuation<? super java.lang.Boolean>, ? extends java.lang.Object> r5, @m8.g kotlin.coroutines.Continuation<? super T> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.f
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ReduceKt$f r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.f) r0
            int r1 = r0.f85571d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85571d = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$f r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$f
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85570c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85571d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f85569b
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 r4 = (kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2) r4
            java.lang.Object r5 = r0.f85568a
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref.ObjectRef) r5
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L31
            goto L5e
        L31:
            r6 = move-exception
            goto L5b
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2 r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$firstOrNull$$inlined$collectWhile$2
            r2.<init>(r5, r6)
            r0.f85568a = r6     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            r0.f85569b = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            r0.f85571d = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L57
            if (r4 != r1) goto L55
            return r1
        L55:
            r5 = r6
            goto L5e
        L57:
            r4 = move-exception
            r5 = r6
            r6 = r4
            r4 = r2
        L5b:
            kotlinx.coroutines.flow.internal.o.b(r6, r4)
        L5e:
            T r4 = r5.element
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.d(kotlinx.coroutines.flow.i, kotlin.jvm.functions.Function2, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T, R> java.lang.Object e(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, R r5, @m8.g kotlin.jvm.functions.Function3<? super R, ? super T, ? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r6, @m8.g kotlin.coroutines.Continuation<? super R> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.g
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.FlowKt__ReduceKt$g r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.g) r0
            int r1 = r0.f85580c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85580c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$g r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$g
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f85579b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85580c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f85578a
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L50
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            r7.element = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2 r5 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2
            r5.<init>(r7, r6)
            r0.f85578a = r7
            r0.f85580c = r3
            java.lang.Object r4 = r4.collect(r5, r0)
            if (r4 != r1) goto L4f
            return r1
        L4f:
            r4 = r7
        L50:
            T r4 = r4.element
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.e(kotlinx.coroutines.flow.i, java.lang.Object, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T, R> Object f(kotlinx.coroutines.flow.i<? extends T> iVar, R r9, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = r9;
        FlowKt__ReduceKt$fold$2 flowKt__ReduceKt$fold$2 = new FlowKt__ReduceKt$fold$2(objectRef, function3);
        InlineMarker.mark(0);
        iVar.collect(flowKt__ReduceKt$fold$2, continuation);
        InlineMarker.mark(1);
        return objectRef.element;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object g(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.h
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$h r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.h) r0
            int r1 = r0.f85583c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85583c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$h r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$h
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f85582b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85583c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f85581a
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L52
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.flow.internal.s.f86031a
            r5.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$i r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$i
            r2.<init>(r5)
            r0.f85581a = r5
            r0.f85583c = r3
            java.lang.Object r4 = r4.collect(r2, r0)
            if (r4 != r1) goto L51
            return r1
        L51:
            r4 = r5
        L52:
            T r4 = r4.element
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
            if (r4 == r5) goto L59
            return r4
        L59:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Expected at least one element"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.g(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object h(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.j
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$j r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.j) r0
            int r1 = r0.f85587c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85587c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$j r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$j
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f85586b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85587c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f85585a
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L4e
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.flow.FlowKt__ReduceKt$k r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$k
            r2.<init>(r5)
            r0.f85585a = r5
            r0.f85587c = r3
            java.lang.Object r4 = r4.collect(r2, r0)
            if (r4 != r1) goto L4d
            return r1
        L4d:
            r4 = r5
        L4e:
            T r4 = r4.element
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.h(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, kotlinx.coroutines.internal.p0] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <S, T extends S> java.lang.Object i(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.jvm.functions.Function3<? super S, ? super T, ? super kotlin.coroutines.Continuation<? super S>, ? extends java.lang.Object> r5, @m8.g kotlin.coroutines.Continuation<? super S> r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.l
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.FlowKt__ReduceKt$l r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.l) r0
            int r1 = r0.f85591c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85591c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$l r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$l
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85590b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85591c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f85589a
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            kotlin.ResultKt.throwOnFailure(r6)
            goto L52
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.flow.internal.s.f86031a
            r6.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$m r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$m
            r2.<init>(r6, r5)
            r0.f85589a = r6
            r0.f85591c = r3
            java.lang.Object r4 = r4.collect(r2, r0)
            if (r4 != r1) goto L51
            return r1
        L51:
            r4 = r6
        L52:
            T r4 = r4.element
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
            if (r4 == r5) goto L59
            return r4
        L59:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Empty flow can't be reduced"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.i(kotlinx.coroutines.flow.i, kotlin.jvm.functions.Function3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0059  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object j(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.n
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$n r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.n) r0
            int r1 = r0.f85600c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85600c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$n r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$n
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f85599b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85600c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f85598a
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            kotlin.ResultKt.throwOnFailure(r5)
            goto L52
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.flow.internal.s.f86031a
            r5.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$o r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$o
            r2.<init>(r5)
            r0.f85598a = r5
            r0.f85600c = r3
            java.lang.Object r4 = r4.collect(r2, r0)
            if (r4 != r1) goto L51
            return r1
        L51:
            r4 = r5
        L52:
            T r4 = r4.element
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
            if (r4 == r5) goto L59
            return r4
        L59:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Flow is empty"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.j(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0068 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object k(@m8.g kotlinx.coroutines.flow.i<? extends T> r4, @m8.g kotlin.coroutines.Continuation<? super T> r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.FlowKt__ReduceKt.q
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.FlowKt__ReduceKt$q r0 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.q) r0
            int r1 = r0.f85606d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85606d = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__ReduceKt$q r0 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$q
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f85605c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85606d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f85604b
            kotlinx.coroutines.flow.FlowKt__ReduceKt$p r4 = (kotlinx.coroutines.flow.FlowKt__ReduceKt.p) r4
            java.lang.Object r0 = r0.f85603a
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L31
            goto L62
        L31:
            r5 = move-exception
            goto L5f
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlin.jvm.internal.Ref$ObjectRef r5 = new kotlin.jvm.internal.Ref$ObjectRef
            r5.<init>()
            kotlinx.coroutines.internal.p0 r2 = kotlinx.coroutines.flow.internal.s.f86031a
            r5.element = r2
            kotlinx.coroutines.flow.FlowKt__ReduceKt$p r2 = new kotlinx.coroutines.flow.FlowKt__ReduceKt$p
            r2.<init>(r5)
            r0.f85603a = r5     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            r0.f85604b = r2     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            r0.f85606d = r3     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            java.lang.Object r4 = r4.collect(r2, r0)     // Catch: kotlinx.coroutines.flow.internal.AbortFlowException -> L5b
            if (r4 != r1) goto L59
            return r1
        L59:
            r0 = r5
            goto L62
        L5b:
            r4 = move-exception
            r0 = r5
            r5 = r4
            r4 = r2
        L5f:
            kotlinx.coroutines.flow.internal.o.b(r5, r4)
        L62:
            T r4 = r0.element
            kotlinx.coroutines.internal.p0 r5 = kotlinx.coroutines.flow.internal.s.f86031a
            if (r4 != r5) goto L69
            r4 = 0
        L69:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__ReduceKt.k(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
