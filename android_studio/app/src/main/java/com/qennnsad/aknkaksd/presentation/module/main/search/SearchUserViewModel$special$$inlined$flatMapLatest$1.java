package com.qennnsad.aknkaksd.presentation.module.main.search;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt;
import androidx.paging.PagingData;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel;
import com.qennnsad.aknkaksd.util.u;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@¨\u0006\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel$special$$inlined$flatMapLatest$1", f = "SearchUserViewModel.kt", i = {}, l = {220}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SearchUserViewModel$special$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<kotlinx.coroutines.flow.j<? super PagingData<b>>, String, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f51984a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f51985b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f51986c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ SearchUserViewModel f51987d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchUserViewModel$special$$inlined$flatMapLatest$1(Continuation continuation, SearchUserViewModel searchUserViewModel) {
        super(3, continuation);
        this.f51987d = searchUserViewModel;
    }

    @Override // kotlin.jvm.functions.Function3
    @m8.h
    public final Object invoke(@m8.g kotlinx.coroutines.flow.j<? super PagingData<b>> jVar, String str, @m8.h Continuation<? super Unit> continuation) {
        SearchUserViewModel$special$$inlined$flatMapLatest$1 searchUserViewModel$special$$inlined$flatMapLatest$1 = new SearchUserViewModel$special$$inlined$flatMapLatest$1(continuation, this.f51987d);
        searchUserViewModel$special$$inlined$flatMapLatest$1.f51985b = jVar;
        searchUserViewModel$special$$inlined$flatMapLatest$1.f51986c = str;
        return searchUserViewModel$special$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        x4.a aVar;
        kotlinx.coroutines.flow.i f22;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f51984a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            kotlinx.coroutines.flow.j jVar = (kotlinx.coroutines.flow.j) this.f51985b;
            String it = (String) this.f51986c;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            if (it.length() == 0) {
                f22 = kotlinx.coroutines.flow.k.n0();
            } else {
                aVar = this.f51987d.f51976f;
                aVar.d(EventSignature.APP_SEARCH, it);
                f22 = kotlinx.coroutines.flow.k.f2(CachedPagingDataKt.cachedIn(u.a(new SearchUserViewModel.a(it), 50).getFlow(), ViewModelKt.getViewModelScope(this.f51987d)), this.f51987d.x(), new SearchUserViewModel.b(null));
            }
            this.f51984a = 1;
            if (kotlinx.coroutines.flow.k.m0(jVar, f22, this) == coroutine_suspended) {
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
