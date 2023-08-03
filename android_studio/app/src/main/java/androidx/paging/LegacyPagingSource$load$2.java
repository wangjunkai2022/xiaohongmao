package androidx.paging;

import androidx.paging.DataSource;
import androidx.paging.PagingSource;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: LegacyPagingSource.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Lkotlinx/coroutines/s0;", "Landroidx/paging/PagingSource$LoadResult$Page;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.LegacyPagingSource$load$2", f = "LegacyPagingSource.kt", i = {}, l = {111}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class LegacyPagingSource$load$2 extends SuspendLambda implements Function2<s0, Continuation<? super PagingSource.LoadResult.Page<Key, Value>>, Object> {
    final /* synthetic */ DataSource.Params<Key> $dataSourceParams;
    final /* synthetic */ PagingSource.LoadParams<Key> $params;
    int label;
    final /* synthetic */ LegacyPagingSource<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyPagingSource$load$2(LegacyPagingSource<Key, Value> legacyPagingSource, DataSource.Params<Key> params, PagingSource.LoadParams<Key> loadParams, Continuation<? super LegacyPagingSource$load$2> continuation) {
        super(2, continuation);
        this.this$0 = legacyPagingSource;
        this.$dataSourceParams = params;
        this.$params = loadParams;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new LegacyPagingSource$load$2(this.this$0, this.$dataSourceParams, this.$params, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super PagingSource.LoadResult.Page<Key, Value>> continuation) {
        return ((LegacyPagingSource$load$2) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            DataSource dataSource$paging_common = this.this$0.getDataSource$paging_common();
            Object obj2 = this.$dataSourceParams;
            this.label = 1;
            obj = dataSource$paging_common.load$paging_common(obj2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        Object obj3 = this.$params;
        DataSource.BaseResult baseResult = (DataSource.BaseResult) obj;
        List<Value> list = baseResult.data;
        return new PagingSource.LoadResult.Page(list, (list.isEmpty() && (obj3 instanceof PagingSource.LoadParams.Prepend)) ? null : baseResult.getPrevKey(), (baseResult.data.isEmpty() && (obj3 instanceof PagingSource.LoadParams.Append)) ? null : baseResult.getNextKey(), baseResult.getItemsBefore(), baseResult.getItemsAfter());
    }
}
