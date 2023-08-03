package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;

/* compiled from: SafeCollector.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0001¢\u0006\u0004\b\u0016\u0010\u0017J8\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u00002\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004H\u0096\u0001¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\t*\u00020\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\nH\u0096\u0003¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH\u0096\u0001J\u0011\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0096\u0003R\u0014\u0010\u0014\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/flow/internal/l;", "Lkotlin/coroutines/CoroutineContext;", "R", "initial", "Lkotlin/Function2;", "Lkotlin/coroutines/CoroutineContext$Element;", "operation", "fold", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", ExifInterface.LONGITUDE_EAST, "Lkotlin/coroutines/CoroutineContext$Key;", "key", "get", "(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;", "minusKey", "context", "plus", "", "a", "Ljava/lang/Throwable;", "e", "originalContext", "<init>", "(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class l implements CoroutineContext {
    @JvmField
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f86021a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ CoroutineContext f86022b;

    public l(@m8.g Throwable th, @m8.g CoroutineContext coroutineContext) {
        this.f86021a = th;
        this.f86022b = coroutineContext;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r9, @m8.g Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
        return (R) this.f86022b.fold(r9, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m8.h
    public <E extends CoroutineContext.Element> E get(@m8.g CoroutineContext.Key<E> key) {
        return (E) this.f86022b.get(key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m8.g
    public CoroutineContext minusKey(@m8.g CoroutineContext.Key<?> key) {
        return this.f86022b.minusKey(key);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @m8.g
    public CoroutineContext plus(@m8.g CoroutineContext coroutineContext) {
        return this.f86022b.plus(coroutineContext);
    }
}
