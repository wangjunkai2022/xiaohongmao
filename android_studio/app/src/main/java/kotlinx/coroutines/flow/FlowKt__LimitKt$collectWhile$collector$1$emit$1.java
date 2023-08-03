package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* compiled from: Limit.kt */
@Metadata(k = 3, mv = {1, 6, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$collectWhile$collector$1", f = "Limit.kt", i = {0}, l = {131}, m = "emit", n = {"this"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class FlowKt__LimitKt$collectWhile$collector$1$emit$1 extends ContinuationImpl {

    /* renamed from: a  reason: collision with root package name */
    Object f85468a;

    /* renamed from: b  reason: collision with root package name */
    /* synthetic */ Object f85469b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ FlowKt__LimitKt$collectWhile$collector$1 f85470c;

    /* renamed from: d  reason: collision with root package name */
    int f85471d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__LimitKt$collectWhile$collector$1$emit$1(FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1, Continuation<? super FlowKt__LimitKt$collectWhile$collector$1$emit$1> continuation) {
        super(continuation);
        this.f85470c = flowKt__LimitKt$collectWhile$collector$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        this.f85469b = obj;
        this.f85471d |= Integer.MIN_VALUE;
        return this.f85470c.emit(null, this);
    }
}
