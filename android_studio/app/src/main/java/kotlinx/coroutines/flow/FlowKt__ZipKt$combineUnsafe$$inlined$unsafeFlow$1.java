package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1 implements i<R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i[] f85778a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Function2 f85779b;

    public FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1(i[] iVarArr, Function2 function2) {
        this.f85778a = iVarArr;
        this.f85779b = function2;
    }

    @Override // kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g j<? super R> jVar, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        i[] iVarArr = this.f85778a;
        Function0 r9 = FlowKt__ZipKt.r();
        Intrinsics.needClassReification();
        Object a10 = kotlinx.coroutines.flow.internal.k.a(jVar, iVarArr, r9, new FlowKt__ZipKt$combineUnsafe$1$1(this.f85779b, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return a10 == coroutine_suspended ? a10 : Unit.INSTANCE;
    }

    @m8.h
    public Object f(@m8.g j jVar, @m8.g Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1.1

            /* renamed from: a  reason: collision with root package name */
            /* synthetic */ Object f85780a;

            /* renamed from: b  reason: collision with root package name */
            int f85781b;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85780a = obj;
                this.f85781b |= Integer.MIN_VALUE;
                return FlowKt__ZipKt$combineUnsafe$$inlined$unsafeFlow$1.this.collect(null, this);
            }
        };
        InlineMarker.mark(5);
        i[] iVarArr = this.f85778a;
        Function0 r9 = FlowKt__ZipKt.r();
        Intrinsics.needClassReification();
        FlowKt__ZipKt$combineUnsafe$1$1 flowKt__ZipKt$combineUnsafe$1$1 = new FlowKt__ZipKt$combineUnsafe$1$1(this.f85779b, null);
        InlineMarker.mark(0);
        kotlinx.coroutines.flow.internal.k.a(jVar, iVarArr, r9, flowKt__ZipKt$combineUnsafe$1$1, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
