package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n3;

/* compiled from: ThreadContext.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\u0006\u0010\u0016\u001a\u00028\u0000\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\u0005\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0014\u0010\r\u001a\u00020\u00032\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u000bH\u0016J*\u0010\u0010\u001a\u0004\u0018\u00018\u0001\"\b\b\u0001\u0010\u000f*\u00020\u000e2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0013\u001a\u00020\u0012H\u0016R\u0014\u0010\u0016\u001a\u00028\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001e\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u000b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006!"}, d2 = {"Lkotlinx/coroutines/internal/v0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/n3;", "Lkotlin/coroutines/CoroutineContext;", "context", "l0", "(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;", "oldState", "", "K", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "Lkotlin/coroutines/CoroutineContext$Key;", "key", "minusKey", "Lkotlin/coroutines/CoroutineContext$Element;", ExifInterface.LONGITUDE_EAST, "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "", "toString", "a", "Ljava/lang/Object;", "value", "Ljava/lang/ThreadLocal;", "b", "Ljava/lang/ThreadLocal;", "threadLocal", "c", "Lkotlin/coroutines/CoroutineContext$Key;", "getKey", "()Lkotlin/coroutines/CoroutineContext$Key;", "<init>", "(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class v0<T> implements n3<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f86302a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final ThreadLocal<T> f86303b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final CoroutineContext.Key<?> f86304c;

    public v0(T t9, @m8.g ThreadLocal<T> threadLocal) {
        this.f86302a = t9;
        this.f86303b = threadLocal;
        this.f86304c = new w0(threadLocal);
    }

    @Override // kotlinx.coroutines.n3
    public void K(@m8.g CoroutineContext coroutineContext, T t9) {
        this.f86303b.set(t9);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    public <R> R fold(R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) n3.a.a(this, r9, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m8.h
    public <E extends CoroutineContext.Element> E get(@m8.g CoroutineContext.Key<E> key) {
        if (Intrinsics.areEqual(getKey(), key)) {
            return this;
        }
        return null;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    @m8.g
    public CoroutineContext.Key<?> getKey() {
        return this.f86304c;
    }

    @Override // kotlinx.coroutines.n3
    public T l0(@m8.g CoroutineContext coroutineContext) {
        T t9 = this.f86303b.get();
        this.f86303b.set(this.f86302a);
        return t9;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @m8.g
    public CoroutineContext minusKey(@m8.g CoroutineContext.Key<?> key) {
        return Intrinsics.areEqual(getKey(), key) ? EmptyCoroutineContext.INSTANCE : this;
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m8.g
    public CoroutineContext plus(@m8.g CoroutineContext coroutineContext) {
        return n3.a.d(this, coroutineContext);
    }

    @m8.g
    public String toString() {
        return "ThreadLocal(value=" + this.f86302a + ", threadLocal = " + this.f86303b + ')';
    }
}
