package androidx.core.os;

import android.os.Handler;
import com.alipay.sdk.packet.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Handler.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\u0004\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086\bø\u0001\u0000\u001a4\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u000e\b\u0004\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\f"}, d2 = {"postAtTime", "Ljava/lang/Runnable;", "Landroid/os/Handler;", "uptimeMillis", "", "token", "", d.f6907q, "Lkotlin/Function0;", "", "postDelayed", "delayInMillis", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class HandlerKt {
    @g
    public static final Runnable postAtTime(@g Handler handler, long j4, @h Object obj, @g Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(handler, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        HandlerKt$postAtTime$runnable$1 handlerKt$postAtTime$runnable$1 = new HandlerKt$postAtTime$runnable$1(action);
        handler.postAtTime(handlerKt$postAtTime$runnable$1, obj, j4);
        return handlerKt$postAtTime$runnable$1;
    }

    public static /* synthetic */ Runnable postAtTime$default(Handler handler, long j4, Object obj, Function0 action, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            obj = null;
        }
        Intrinsics.checkNotNullParameter(handler, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        HandlerKt$postAtTime$runnable$1 handlerKt$postAtTime$runnable$1 = new HandlerKt$postAtTime$runnable$1(action);
        handler.postAtTime(handlerKt$postAtTime$runnable$1, obj, j4);
        return handlerKt$postAtTime$runnable$1;
    }

    @g
    public static final Runnable postDelayed(@g Handler handler, long j4, @h Object obj, @g Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(handler, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        HandlerKt$postDelayed$runnable$1 handlerKt$postDelayed$runnable$1 = new HandlerKt$postDelayed$runnable$1(action);
        if (obj == null) {
            handler.postDelayed(handlerKt$postDelayed$runnable$1, j4);
        } else {
            HandlerCompat.postDelayed(handler, handlerKt$postDelayed$runnable$1, obj, j4);
        }
        return handlerKt$postDelayed$runnable$1;
    }

    public static /* synthetic */ Runnable postDelayed$default(Handler handler, long j4, Object obj, Function0 action, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            obj = null;
        }
        Intrinsics.checkNotNullParameter(handler, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        HandlerKt$postDelayed$runnable$1 handlerKt$postDelayed$runnable$1 = new HandlerKt$postDelayed$runnable$1(action);
        if (obj == null) {
            handler.postDelayed(handlerKt$postDelayed$runnable$1, j4);
        } else {
            HandlerCompat.postDelayed(handler, handlerKt$postDelayed$runnable$1, obj, j4);
        }
        return handlerKt$postDelayed$runnable$1;
    }
}
