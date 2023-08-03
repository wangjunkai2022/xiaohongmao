package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.j2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Share.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u001f\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u001a\u0010\u001bJ!\u0010\b\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096Aø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ&\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\u00102\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00158\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/flow/u;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/x;", "Lkotlinx/coroutines/flow/c;", "Lkotlinx/coroutines/flow/internal/p;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "Lkotlinx/coroutines/flow/i;", "a", "Lkotlinx/coroutines/j2;", "Lkotlinx/coroutines/j2;", "job", "", "b", "()Ljava/util/List;", "replayCache", "flow", "<init>", "(Lkotlinx/coroutines/flow/x;Lkotlinx/coroutines/j2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class u<T> implements x<T>, c<T>, kotlinx.coroutines.flow.internal.p<T> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final j2 f86157a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ x<T> f86158b;

    /* JADX WARN: Multi-variable type inference failed */
    public u(@m8.g x<? extends T> xVar, @m8.h j2 j2Var) {
        this.f86157a = j2Var;
        this.f86158b = xVar;
    }

    @Override // kotlinx.coroutines.flow.internal.p
    @m8.g
    public i<T> a(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return z.e(this, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.x
    @m8.g
    public List<T> b() {
        return this.f86158b.b();
    }

    @Override // kotlinx.coroutines.flow.x, kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g j<? super T> jVar, @m8.g Continuation<?> continuation) {
        return this.f86158b.collect(jVar, continuation);
    }
}
