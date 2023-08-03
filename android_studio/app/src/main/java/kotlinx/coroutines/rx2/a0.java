package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.g0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;

/* compiled from: RxChannel.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0003\n\u0002\b\u0005\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004B\u0007¢\u0006\u0004\b\u0018\u0010\u0013J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/rx2/a0;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/a0;", "Lio/reactivex/g0;", "Lio/reactivex/t;", "Lkotlinx/coroutines/internal/x;", "closed", "", "J", "(Lkotlinx/coroutines/internal/x;)V", "Lio/reactivex/disposables/c;", com.auth0.jwt.impl.i.f7106f, "onSubscribe", "(Lio/reactivex/disposables/c;)V", "t", "onSuccess", "(Ljava/lang/Object;)V", "onNext", "onComplete", "()V", "", "e", "onError", "(Ljava/lang/Throwable;)V", "<init>", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class a0<T> extends kotlinx.coroutines.channels.a0<T> implements g0<T>, io.reactivex.t<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86514d = AtomicReferenceFieldUpdater.newUpdater(a0.class, Object.class, "_subscription");
    @m8.g
    private volatile /* synthetic */ Object _subscription;

    public a0() {
        super(null);
        this._subscription = null;
    }

    @Override // kotlinx.coroutines.channels.c
    public void J(@m8.g kotlinx.coroutines.internal.x xVar) {
        io.reactivex.disposables.c cVar = (io.reactivex.disposables.c) f86514d.getAndSet(this, null);
        if (cVar == null) {
            return;
        }
        cVar.dispose();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        close(null);
    }

    @Override // io.reactivex.g0
    public void onError(@m8.g Throwable th) {
        close(th);
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        mo51trySendJP2dKIU(t9);
    }

    @Override // io.reactivex.g0
    public void onSubscribe(@m8.g io.reactivex.disposables.c cVar) {
        this._subscription = cVar;
    }

    @Override // io.reactivex.t
    public void onSuccess(T t9) {
        mo51trySendJP2dKIU(t9);
        close(null);
    }
}
