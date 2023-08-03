package q4;

import android.os.Looper;
import androidx.annotation.RestrictTo;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.disposables.e;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: mainThread.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0014\u0010\u0003\u001a\u00020\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u0000H\u0007¨\u0006\u0004"}, d2 = {"Lio/reactivex/rxjava3/core/n0;", "observer", "", "a", "rxbinding_release"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "Preconditions")
/* loaded from: classes3.dex */
public final class b {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean a(@g n0<?> n0Var) {
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            n0Var.onSubscribe(e.b());
            StringBuilder sb = new StringBuilder();
            sb.append("Expected to be called on the main thread but was ");
            Thread currentThread = Thread.currentThread();
            Intrinsics.checkExpressionValueIsNotNull(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            n0Var.onError(new IllegalStateException(sb.toString()));
            return false;
        }
        return true;
    }
}
