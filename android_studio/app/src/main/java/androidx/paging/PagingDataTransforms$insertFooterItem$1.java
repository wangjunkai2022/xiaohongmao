package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.d;
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

/* compiled from: PagingDataTransforms.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0000\n\u0002\b\u0004\u0010\u0004\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u00002\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "<anonymous parameter 0>", d.f25712d0, "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PagingDataTransforms$insertFooterItem$1", f = "PagingDataTransforms.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class PagingDataTransforms$insertFooterItem$1 extends SuspendLambda implements Function3<T, T, Continuation<? super T>, Object> {
    final /* synthetic */ T $item;
    /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagingDataTransforms$insertFooterItem$1(T t9, Continuation<? super PagingDataTransforms$insertFooterItem$1> continuation) {
        super(3, continuation);
        this.$item = t9;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke(obj, obj2, (Continuation<? super Object>) obj3);
    }

    @h
    public final Object invoke(@h T t9, @h T t10, @h Continuation<? super T> continuation) {
        PagingDataTransforms$insertFooterItem$1 pagingDataTransforms$insertFooterItem$1 = new PagingDataTransforms$insertFooterItem$1(this.$item, continuation);
        pagingDataTransforms$insertFooterItem$1.L$0 = t10;
        return pagingDataTransforms$insertFooterItem$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.L$0 == null) {
                return this.$item;
            }
            return null;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
