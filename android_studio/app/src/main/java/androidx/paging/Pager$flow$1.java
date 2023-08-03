package androidx.paging;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import m8.g;
import m8.h;

/* compiled from: Pager.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
/* synthetic */ class Pager$flow$1 extends FunctionReferenceImpl implements Function1<PagingSource<Key, Value>>, SuspendFunction {
    /* JADX INFO: Access modifiers changed from: package-private */
    public Pager$flow$1(Object obj) {
        super(1, obj, SuspendingPagingSourceFactory.class, "create", "create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final Object invoke(@g Continuation<? super PagingSource<Key, Value>> continuation) {
        return ((SuspendingPagingSourceFactory) this.receiver).create(continuation);
    }
}
