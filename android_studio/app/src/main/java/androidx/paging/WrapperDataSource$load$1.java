package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WrapperDataSource.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.paging.WrapperDataSource", f = "WrapperDataSource.kt", i = {0}, l = {68}, m = "load$suspendImpl", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class WrapperDataSource$load$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ WrapperDataSource<Key, ValueFrom, ValueTo> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WrapperDataSource$load$1(WrapperDataSource<Key, ValueFrom, ValueTo> wrapperDataSource, Continuation<? super WrapperDataSource$load$1> continuation) {
        super(continuation);
        this.this$0 = wrapperDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return WrapperDataSource.load$suspendImpl(this.this$0, null, this);
    }
}
