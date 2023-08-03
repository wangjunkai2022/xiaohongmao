package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import m8.g;
import m8.h;

/* compiled from: CachedPagingData.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\b\b\u0000\u0010\u0001*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/MulticastedPagingData;", "prev", "next", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.CachedPagingDataKt$cachedIn$2", f = "CachedPagingData.kt", i = {0}, l = {99}, m = "invokeSuspend", n = {"next"}, s = {"L$0"})
/* loaded from: classes.dex */
final class CachedPagingDataKt$cachedIn$2 extends SuspendLambda implements Function3<MulticastedPagingData<T>, MulticastedPagingData<T>, Continuation<? super MulticastedPagingData<T>>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CachedPagingDataKt$cachedIn$2(Continuation<? super CachedPagingDataKt$cachedIn$2> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    @h
    public final Object invoke(@g MulticastedPagingData<T> multicastedPagingData, @g MulticastedPagingData<T> multicastedPagingData2, @h Continuation<? super MulticastedPagingData<T>> continuation) {
        CachedPagingDataKt$cachedIn$2 cachedPagingDataKt$cachedIn$2 = new CachedPagingDataKt$cachedIn$2(continuation);
        cachedPagingDataKt$cachedIn$2.L$0 = multicastedPagingData;
        cachedPagingDataKt$cachedIn$2.L$1 = multicastedPagingData2;
        return cachedPagingDataKt$cachedIn$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 != 0) {
            if (i4 == 1) {
                MulticastedPagingData multicastedPagingData = (MulticastedPagingData) this.L$0;
                ResultKt.throwOnFailure(obj);
                return multicastedPagingData;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        MulticastedPagingData multicastedPagingData2 = (MulticastedPagingData) this.L$1;
        this.L$0 = multicastedPagingData2;
        this.label = 1;
        return ((MulticastedPagingData) this.L$0).close(this) == coroutine_suspended ? coroutine_suspended : multicastedPagingData2;
    }
}
