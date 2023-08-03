package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReactiveFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0007\u001a\u00020\u00062\u0010\u0010\u0005\u001a\f\u0012\u0006\b\u0000\u0012\u00028\u0000\u0018\u00010\u0004H\u0016R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/reactive/e;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/reactivestreams/c;", "Lorg/reactivestreams/d;", "subscriber", "", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/flow/i;", "a", "Lkotlinx/coroutines/flow/i;", "flow", "Lkotlin/coroutines/CoroutineContext;", "b", "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-reactive"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e<T> implements org.reactivestreams.c<T> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<T> f86426a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext f86427b;

    /* JADX WARN: Multi-variable type inference failed */
    public e(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g CoroutineContext coroutineContext) {
        this.f86426a = iVar;
        this.f86427b = coroutineContext;
    }

    @Override // org.reactivestreams.c
    public void i(@m8.h org.reactivestreams.d<? super T> dVar) {
        Objects.requireNonNull(dVar);
        dVar.onSubscribe(new h(this.f86426a, dVar, this.f86427b));
    }
}
