package androidx.lifecycle;

import java.io.Closeable;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o2;
import kotlinx.coroutines.s0;

/* compiled from: ViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\b\u0010\u0004\u001a\u00020\u0003H\u0016R\u001a\u0010\u0006\u001a\u00020\u00058\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Landroidx/lifecycle/CloseableCoroutineScope;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/s0;", "", "close", "Lkotlin/coroutines/CoroutineContext;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlin/coroutines/CoroutineContext;)V", "lifecycle-viewmodel-ktx_release"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class CloseableCoroutineScope implements Closeable, s0 {
    @m8.g
    private final CoroutineContext coroutineContext;

    public CloseableCoroutineScope(@m8.g CoroutineContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.coroutineContext = context;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        o2.i(getCoroutineContext(), null, 1, null);
    }

    @Override // kotlinx.coroutines.s0
    @m8.g
    public CoroutineContext getCoroutineContext() {
        return this.coroutineContext;
    }
}
