package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagingData;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel;
import com.qennnsad.aknkaksd.util.u;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@¨\u0006\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel$special$$inlined$flatMapLatest$1", f = "AbstractAnchorViewModel.kt", i = {}, l = {219}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class AbstractAnchorViewModel$special$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.j<? super PagingData<l>>, Boolean, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f51403a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f51404b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f51405c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ AbstractAnchorViewModel f51406d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractAnchorViewModel$special$$inlined$flatMapLatest$1(Continuation continuation, AbstractAnchorViewModel abstractAnchorViewModel) {
        super(3, continuation);
        this.f51406d = abstractAnchorViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    @m8.h
    public final Object invoke(@m8.g kotlinx.coroutines.flow.j<? super PagingData<l>> jVar, Boolean bool, @m8.h Continuation<? super Unit> continuation) {
        AbstractAnchorViewModel$special$$inlined$flatMapLatest$1 abstractAnchorViewModel$special$$inlined$flatMapLatest$1 = new AbstractAnchorViewModel$special$$inlined$flatMapLatest$1(continuation, this.f51406d);
        abstractAnchorViewModel$special$$inlined$flatMapLatest$1.f51404b = jVar;
        abstractAnchorViewModel$special$$inlined$flatMapLatest$1.f51405c = bool;
        return abstractAnchorViewModel$special$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f51403a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            kotlinx.coroutines.flow.i flow = u.a(new AbstractAnchorViewModel.a(this.f51406d, (Boolean) this.f51405c), 50).getFlow();
            this.f51403a = 1;
            if (kotlinx.coroutines.flow.k.m0((kotlinx.coroutines.flow.j) this.f51404b, flow, this) == coroutine_suspended) {
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
