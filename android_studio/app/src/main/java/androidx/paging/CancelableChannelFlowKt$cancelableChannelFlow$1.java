package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.j2;
import m8.g;
import m8.h;

/* compiled from: CancelableChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/SimpleProducerScope;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.CancelableChannelFlowKt$cancelableChannelFlow$1", f = "CancelableChannelFlow.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class CancelableChannelFlowKt$cancelableChannelFlow$1 extends SuspendLambda implements Function2<SimpleProducerScope<T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<SimpleProducerScope<T>, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ j2 $controller;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CancelableChannelFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: androidx.paging.CancelableChannelFlowKt$cancelableChannelFlow$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends Lambda implements Function1<Throwable, Unit> {
        final /* synthetic */ SimpleProducerScope<T> $$this$simpleChannelFlow;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(SimpleProducerScope<T> simpleProducerScope) {
            super(1);
            this.$$this$simpleChannelFlow = simpleProducerScope;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@h Throwable th) {
            j0.a.a(this.$$this$simpleChannelFlow, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CancelableChannelFlowKt$cancelableChannelFlow$1(j2 j2Var, Function2<? super SimpleProducerScope<T>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super CancelableChannelFlowKt$cancelableChannelFlow$1> continuation) {
        super(2, continuation);
        this.$controller = j2Var;
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        CancelableChannelFlowKt$cancelableChannelFlow$1 cancelableChannelFlowKt$cancelableChannelFlow$1 = new CancelableChannelFlowKt$cancelableChannelFlow$1(this.$controller, this.$block, continuation);
        cancelableChannelFlowKt$cancelableChannelFlow$1.L$0 = obj;
        return cancelableChannelFlowKt$cancelableChannelFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g SimpleProducerScope<T> simpleProducerScope, @h Continuation<? super Unit> continuation) {
        return ((CancelableChannelFlowKt$cancelableChannelFlow$1) create(simpleProducerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
            this.$controller.H(new AnonymousClass1(simpleProducerScope));
            Function2<SimpleProducerScope<T>, Continuation<? super Unit>, Object> function2 = this.$block;
            this.label = 1;
            if (function2.invoke(simpleProducerScope, this) == coroutine_suspended) {
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
