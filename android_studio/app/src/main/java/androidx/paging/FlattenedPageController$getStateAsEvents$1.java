package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CachedPageEventFlow.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.paging.FlattenedPageController", f = "CachedPageEventFlow.kt", i = {0, 0}, l = {262}, m = "getStateAsEvents", n = {"this", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class FlattenedPageController$getStateAsEvents$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FlattenedPageController<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlattenedPageController$getStateAsEvents$1(FlattenedPageController<T> flattenedPageController, Continuation<? super FlattenedPageController$getStateAsEvents$1> continuation) {
        super(continuation);
        this.this$0 = flattenedPageController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getStateAsEvents(this);
    }
}
