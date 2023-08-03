package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.e3;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.a0;
import kotlinx.coroutines.internal.x;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Channel.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u000f\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0006J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/reactive/p;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/a0;", "Lorg/reactivestreams/d;", "", "f0", "()V", "e0", "Lkotlinx/coroutines/internal/x;", "closed", "J", "(Lkotlinx/coroutines/internal/x;)V", "Lorg/reactivestreams/e;", "s", "onSubscribe", "(Lorg/reactivestreams/e;)V", "t", "onNext", "(Ljava/lang/Object;)V", "onComplete", "", "e", "onError", "(Ljava/lang/Throwable;)V", "", "d", "I", e3.b.f83149d, "<init>", "(I)V", "kotlinx-coroutines-reactive"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class p<T> extends a0<T> implements org.reactivestreams.d<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86490e = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "_subscription");

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86491f = AtomicIntegerFieldUpdater.newUpdater(p.class, "_requested");
    @m8.g
    private volatile /* synthetic */ int _requested;
    @m8.g
    private volatile /* synthetic */ Object _subscription;

    /* renamed from: d  reason: collision with root package name */
    private final int f86492d;

    public p(int i4) {
        super(null);
        this.f86492d = i4;
        if (i4 >= 0) {
            this._subscription = null;
            this._requested = 0;
            return;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Invalid request size: ", Integer.valueOf(i4)).toString());
    }

    @Override // kotlinx.coroutines.channels.c
    public void J(@m8.g x xVar) {
        org.reactivestreams.e eVar = (org.reactivestreams.e) f86490e.getAndSet(this, null);
        if (eVar == null) {
            return;
        }
        eVar.cancel();
    }

    @Override // kotlinx.coroutines.channels.a
    public void e0() {
        f86491f.incrementAndGet(this);
    }

    @Override // kotlinx.coroutines.channels.a
    public void f0() {
        org.reactivestreams.e eVar;
        int i4;
        while (true) {
            int i10 = this._requested;
            eVar = (org.reactivestreams.e) this._subscription;
            i4 = i10 - 1;
            if (eVar != null && i4 < 0) {
                int i11 = this.f86492d;
                if (i10 == i11 || f86491f.compareAndSet(this, i10, i11)) {
                    break;
                }
            } else if (f86491f.compareAndSet(this, i10, i4)) {
                return;
            }
        }
        eVar.request(this.f86492d - i4);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        close(null);
    }

    @Override // org.reactivestreams.d
    public void onError(@m8.g Throwable th) {
        close(th);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        f86491f.decrementAndGet(this);
        mo51trySendJP2dKIU(t9);
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(@m8.g org.reactivestreams.e eVar) {
        this._subscription = eVar;
        while (!isClosedForSend()) {
            int i4 = this._requested;
            int i10 = this.f86492d;
            if (i4 >= i10) {
                return;
            }
            if (f86491f.compareAndSet(this, i4, i10)) {
                eVar.request(this.f86492d - i4);
                return;
            }
        }
        eVar.cancel();
    }
}
