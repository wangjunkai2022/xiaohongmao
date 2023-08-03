package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* compiled from: StackTraceFrame.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u00018\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/debug/internal/k;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "a", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "b", "Ljava/lang/StackTraceElement;", "stackTraceElement", "<init>", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/StackTraceElement;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class k implements CoroutineStackFrame {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineStackFrame f85236a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final StackTraceElement f85237b;

    public k(@m8.h CoroutineStackFrame coroutineStackFrame, @m8.g StackTraceElement stackTraceElement) {
        this.f85236a = coroutineStackFrame;
        this.f85237b = stackTraceElement;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.h
    public CoroutineStackFrame getCallerFrame() {
        return this.f85236a;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @m8.g
    public StackTraceElement getStackTraceElement() {
        return this.f85237b;
    }
}
