package com.im.freechat.domain.usecase.downloads;

import androidx.exifinterface.media.ExifInterface;
import com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2;
import com.im.freechat.shared.entities.DownloadInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import m8.g;
import m8.h;

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@¨\u0006\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1", f = "SubscribeDownloadsInteractor.kt", i = {}, l = {223}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<j<? super List<? extends DownloadInfo>>, List<? extends DownloadInfo>, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f41764a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f41765b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f41766c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ SubscribeDownloadsInteractor f41767d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1(Continuation continuation, SubscribeDownloadsInteractor subscribeDownloadsInteractor) {
        super(3, continuation);
        this.f41767d = subscribeDownloadsInteractor;
    }

    @Override // kotlin.jvm.functions.Function3
    @h
    public final Object invoke(@g j<? super List<? extends DownloadInfo>> jVar, List<? extends DownloadInfo> list, @h Continuation<? super Unit> continuation) {
        SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1 subscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1 = new SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1(continuation, this.f41767d);
        subscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1.f41765b = jVar;
        subscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1.f41766c = list;
        return subscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f41764a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            i U1 = k.U1(k.e1(k.g0(this.f41767d.d().b((List) this.f41766c)), new SubscribeDownloadsInteractor$run$2.a(this.f41767d, null)), new SubscribeDownloadsInteractor$run$2.b(this.f41767d, null));
            this.f41764a = 1;
            if (k.m0((j) this.f41765b, U1, this) == coroutine_suspended) {
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
