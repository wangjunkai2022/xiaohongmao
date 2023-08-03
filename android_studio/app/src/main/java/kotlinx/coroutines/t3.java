package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;

/* compiled from: Timeout.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\n\b\u0001\u0010\u0002 \u0000*\u00028\u00002\b\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005B\u001d\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u000f\u0010\t\u001a\u00020\bH\u0010¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/t3;", "U", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/l0;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "run", "", "M0", "()Ljava/lang/String;", "", "d", "J", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "Lkotlin/coroutines/Continuation;", "uCont", "<init>", "(JLkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class t3<U, T extends U> extends kotlinx.coroutines.internal.l0<T> implements Runnable {
    @JvmField

    /* renamed from: d  reason: collision with root package name */
    public final long f86808d;

    public t3(long j4, @m8.g Continuation<? super U> continuation) {
        super(continuation.getContext(), continuation);
        this.f86808d = j4;
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.q2
    @m8.g
    public String M0() {
        return super.M0() + "(timeMillis=" + this.f86808d + ')';
    }

    @Override // java.lang.Runnable
    public void run() {
        Y(u3.a(this.f86808d, this));
    }
}
