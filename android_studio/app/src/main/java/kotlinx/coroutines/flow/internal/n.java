package kotlinx.coroutines.flow.internal;

import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.s0;

/* compiled from: FlowCoroutine.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aD\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002)\b\u0001\u0010\u0006\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001¢\u0006\u0002\b\u0005H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\b\u001aU\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\u0004\b\u0000\u0010\u000025\b\u0001\u0010\u0006\u001a/\b\u0001\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\t¢\u0006\u0002\b\u0005H\u0000ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"R", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "a", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/Function3;", "Lkotlinx/coroutines/flow/j;", "", "Lkotlinx/coroutines/flow/i;", "b", "(Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class n {

    /* compiled from: SafeCollector.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements kotlinx.coroutines.flow.i<R> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function3 f86023a;

        public a(Function3 function3) {
            this.f86023a = function3;
        }

        @Override // kotlinx.coroutines.flow.i
        @m8.h
        public Object collect(@m8.g kotlinx.coroutines.flow.j<? super R> jVar, @m8.g Continuation<? super Unit> continuation) {
            Object coroutine_suspended;
            Object a10 = n.a(new b(this.f86023a, jVar, null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return a10 == coroutine_suspended ? a10 : Unit.INSTANCE;
        }
    }

    /* compiled from: FlowCoroutine.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1", f = "FlowCoroutine.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86024a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f86025b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function3<s0, kotlinx.coroutines.flow.j<? super R>, Continuation<? super Unit>, Object> f86026c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.j<R> f86027d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(Function3<? super s0, ? super kotlinx.coroutines.flow.j<? super R>, ? super Continuation<? super Unit>, ? extends Object> function3, kotlinx.coroutines.flow.j<? super R> jVar, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f86026c = function3;
            this.f86027d = jVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f86026c, this.f86027d, continuation);
            bVar.f86025b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86024a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Function3<s0, kotlinx.coroutines.flow.j<? super R>, Continuation<? super Unit>, Object> function3 = this.f86026c;
                Object obj2 = this.f86027d;
                this.f86024a = 1;
                if (function3.invoke((s0) this.f86025b, obj2, this) == coroutine_suspended) {
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

    @m8.h
    public static final <R> Object a(@BuilderInference @m8.g Function2<? super s0, ? super Continuation<? super R>, ? extends Object> function2, @m8.g Continuation<? super R> continuation) {
        Object coroutine_suspended;
        m mVar = new m(continuation.getContext(), continuation);
        Object f10 = z7.b.f(mVar, mVar, function2);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (f10 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return f10;
    }

    @m8.g
    public static final <R> kotlinx.coroutines.flow.i<R> b(@BuilderInference @m8.g Function3<? super s0, ? super kotlinx.coroutines.flow.j<? super R>, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return new a(function3);
    }
}
