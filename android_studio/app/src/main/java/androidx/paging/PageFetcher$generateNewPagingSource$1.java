package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PageFetcher.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.paging.PageFetcher", f = "PageFetcher.kt", i = {0, 0}, l = {188}, m = "generateNewPagingSource", n = {"this", "previousPagingSource"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class PageFetcher$generateNewPagingSource$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PageFetcher<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$generateNewPagingSource$1(PageFetcher<Key, Value> pageFetcher, Continuation<? super PageFetcher$generateNewPagingSource$1> continuation) {
        super(continuation);
        this.this$0 = pageFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object generateNewPagingSource;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        generateNewPagingSource = this.this$0.generateNewPagingSource(null, this);
        return generateNewPagingSource;
    }
}
