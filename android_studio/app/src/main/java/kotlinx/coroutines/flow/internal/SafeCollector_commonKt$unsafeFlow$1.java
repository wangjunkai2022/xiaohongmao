package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;

/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class SafeCollector_commonKt$unsafeFlow$1 implements kotlinx.coroutines.flow.i<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function2<kotlinx.coroutines.flow.j<? super T>, Continuation<? super Unit>, Object> f85901a;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector_commonKt$unsafeFlow$1(Function2<? super kotlinx.coroutines.flow.j<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        this.f85901a = function2;
    }

    @Override // kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object invoke = this.f85901a.invoke(jVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return invoke == coroutine_suspended ? invoke : Unit.INSTANCE;
    }

    @m8.h
    public Object f(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g final Continuation<? super Unit> continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.internal.SafeCollector_commonKt$unsafeFlow$1$collect$1

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f85902a;

            /* renamed from: c  reason: collision with root package name */
            int f85904c;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85902a = obj;
                this.f85904c |= Integer.MIN_VALUE;
                return SafeCollector_commonKt$unsafeFlow$1.this.collect(null, this);
            }
        };
        InlineMarker.mark(5);
        this.f85901a.invoke(jVar, continuation);
        return Unit.INSTANCE;
    }
}
