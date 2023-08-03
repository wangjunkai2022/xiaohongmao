package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: Reduce.kt */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2", f = "Reduce.kt", i = {}, l = {45}, m = "emit", n = {}, s = {})
/* loaded from: classes4.dex */
public final class FlowKt__ReduceKt$fold$2$emit$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f85574a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f85575b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ FlowKt__ReduceKt$fold$2<T> f85576c;

    /* renamed from: d  reason: collision with root package name */
    int f85577d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ReduceKt$fold$2$emit$1(FlowKt__ReduceKt$fold$2<? super T> flowKt__ReduceKt$fold$2, Continuation<? super FlowKt__ReduceKt$fold$2$emit$1> continuation) {
        super(continuation);
        this.f85576c = flowKt__ReduceKt$fold$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        this.f85575b = obj;
        this.f85577d |= Integer.MIN_VALUE;
        return this.f85576c.emit(null, this);
    }
}
