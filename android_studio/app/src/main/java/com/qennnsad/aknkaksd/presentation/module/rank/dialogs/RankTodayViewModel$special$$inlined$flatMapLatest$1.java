package com.qennnsad.aknkaksd.presentation.module.rank.dialogs;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagingData;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel;
import com.qennnsad.aknkaksd.util.u;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@¨\u0006\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel$special$$inlined$flatMapLatest$1", f = "RankTodayViewModel.kt", i = {}, l = {com.facebook.imageutils.c.f13388c}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class RankTodayViewModel$special$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<j<? super PagingData<RankItem>>, com.qennnsad.aknkaksd.presentation.module.rank.h, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f52312a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f52313b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f52314c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ RankTodayViewModel f52315d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RankTodayViewModel$special$$inlined$flatMapLatest$1(Continuation continuation, RankTodayViewModel rankTodayViewModel) {
        super(3, continuation);
        this.f52315d = rankTodayViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    @m8.h
    public final Object invoke(@m8.g j<? super PagingData<RankItem>> jVar, com.qennnsad.aknkaksd.presentation.module.rank.h hVar, @m8.h Continuation<? super Unit> continuation) {
        RankTodayViewModel$special$$inlined$flatMapLatest$1 rankTodayViewModel$special$$inlined$flatMapLatest$1 = new RankTodayViewModel$special$$inlined$flatMapLatest$1(continuation, this.f52315d);
        rankTodayViewModel$special$$inlined$flatMapLatest$1.f52313b = jVar;
        rankTodayViewModel$special$$inlined$flatMapLatest$1.f52314c = hVar;
        return rankTodayViewModel$special$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f52312a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            kotlinx.coroutines.flow.i flow = u.b(new RankTodayViewModel.b((com.qennnsad.aknkaksd.presentation.module.rank.h) this.f52314c)).getFlow();
            this.f52312a = 1;
            if (k.m0((j) this.f52313b, flow, this) == coroutine_suspended) {
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
