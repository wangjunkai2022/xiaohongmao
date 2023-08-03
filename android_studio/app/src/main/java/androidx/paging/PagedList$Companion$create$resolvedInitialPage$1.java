package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagingSource;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000\"\b\b\u0002\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "K", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "Landroidx/paging/PagingSource$LoadResult$Page;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PagedList$Companion$create$resolvedInitialPage$1", f = "PagedList.kt", i = {}, l = {184}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PagedList$Companion$create$resolvedInitialPage$1 extends SuspendLambda implements Function2<s0, Continuation<? super PagingSource.LoadResult.Page<K, T>>, Object> {
    final /* synthetic */ PagingSource<K, T> $pagingSource;
    final /* synthetic */ PagingSource.LoadParams.Refresh<K> $params;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedList$Companion$create$resolvedInitialPage$1(PagingSource<K, T> pagingSource, PagingSource.LoadParams.Refresh<K> refresh, Continuation<? super PagedList$Companion$create$resolvedInitialPage$1> continuation) {
        super(2, continuation);
        this.$pagingSource = pagingSource;
        this.$params = refresh;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new PagedList$Companion$create$resolvedInitialPage$1(this.$pagingSource, this.$params, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super PagingSource.LoadResult.Page<K, T>> continuation) {
        return ((PagedList$Companion$create$resolvedInitialPage$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            PagingSource<K, T> pagingSource = this.$pagingSource;
            Object obj2 = this.$params;
            this.label = 1;
            obj = pagingSource.load(obj2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        PagingSource.LoadResult loadResult = (PagingSource.LoadResult) obj;
        if (loadResult instanceof PagingSource.LoadResult.Page) {
            return (PagingSource.LoadResult.Page) loadResult;
        }
        if (!(loadResult instanceof PagingSource.LoadResult.Error)) {
            if (loadResult instanceof PagingSource.LoadResult.Invalid) {
                throw new IllegalStateException("Failed to create PagedList. The provided PagingSource returned LoadResult.Invalid, but a LoadResult.Page was expected. To use a PagingSource which supports invalidation, use a PagedList builder that accepts a factory method for PagingSource or DataSource.Factory, such as LivePagedList.");
            }
            throw new NoWhenBranchMatchedException();
        }
        throw ((PagingSource.LoadResult.Error) loadResult).getThrowable();
    }
}
