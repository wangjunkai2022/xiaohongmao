package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.h4;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.u1;
import kotlinx.coroutines.v0;

/* compiled from: Actor.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0012\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B%\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0006\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004H\u0014¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/d;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/n;", "Lkotlinx/coroutines/channels/f;", "", "cause", "", "R0", h4.b.f83287e, "", "z0", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "Lkotlinx/coroutines/channels/m;", "channel", "active", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/m;Z)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
class d<E> extends n<E> implements f<E> {
    public d(@m8.g CoroutineContext coroutineContext, @m8.g m<E> mVar, boolean z9) {
        super(coroutineContext, mVar, false, z9);
        B0((j2) coroutineContext.get(j2.f86331k2));
    }

    @Override // kotlinx.coroutines.q2
    protected void R0(@m8.h Throwable th) {
        m<E> p12 = p1();
        if (th != null) {
            r1 = th instanceof CancellationException ? (CancellationException) th : null;
            if (r1 == null) {
                r1 = u1.a(Intrinsics.stringPlus(v0.a(this), " was cancelled"), th);
            }
        }
        p12.d(r1);
    }

    @Override // kotlinx.coroutines.q2
    protected boolean z0(@m8.g Throwable th) {
        p0.b(getContext(), th);
        return true;
    }
}
