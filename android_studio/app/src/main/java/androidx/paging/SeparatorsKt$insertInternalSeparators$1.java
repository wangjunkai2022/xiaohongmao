package androidx.paging;

import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Separators.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.paging.SeparatorsKt", f = "Separators.kt", i = {0, 0, 0, 0, 0, 0}, l = {81}, m = "insertInternalSeparators", n = {"$this$insertInternalSeparators", "generator", "outputList", "outputIndices", "item", ContextChain.TAG_INFRA}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$2"})
/* loaded from: classes.dex */
public final class SeparatorsKt$insertInternalSeparators$1<R, T extends R> extends ContinuationImpl {
    int I$0;
    int I$1;
    int I$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SeparatorsKt$insertInternalSeparators$1(Continuation<? super SeparatorsKt$insertInternalSeparators$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return SeparatorsKt.insertInternalSeparators(null, null, this);
    }
}
