package androidx.paging;

import androidx.annotation.VisibleForTesting;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.aspectj.lang.c;

/* compiled from: InvalidateCallbackTracker.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B+\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\r\u0010\u0012\u001a\u00020\u0013H\u0001¢\u0006\u0002\b\u0014J\r\u0010\u0015\u001a\u00020\u0005H\u0000¢\u0006\u0002\b\u0016J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u001c\u0010\u001aR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Landroidx/paging/InvalidateCallbackTracker;", ExifInterface.GPS_DIRECTION_TRUE, "", "callbackInvoker", "Lkotlin/Function1;", "", "invalidGetter", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "callbacks", "", "<set-?>", "invalid", "getInvalid$paging_common", "()Z", c.f91028k, "Ljava/util/concurrent/locks/ReentrantLock;", "callbackCount", "", "callbackCount$paging_common", "invalidate", "invalidate$paging_common", "registerInvalidatedCallback", com.alipay.sdk.authjs.a.f6838i, "registerInvalidatedCallback$paging_common", "(Ljava/lang/Object;)V", "unregisterInvalidatedCallback", "unregisterInvalidatedCallback$paging_common", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class InvalidateCallbackTracker<T> {
    @g
    private final Function1<T, Unit> callbackInvoker;
    @g
    private final List<T> callbacks;
    private boolean invalid;
    @h
    private final Function0<Boolean> invalidGetter;
    @g
    private final ReentrantLock lock;

    /* JADX WARN: Multi-variable type inference failed */
    public InvalidateCallbackTracker(@g Function1<? super T, Unit> callbackInvoker, @h Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(callbackInvoker, "callbackInvoker");
        this.callbackInvoker = callbackInvoker;
        this.invalidGetter = function0;
        this.lock = new ReentrantLock();
        this.callbacks = new ArrayList();
    }

    @VisibleForTesting
    public final int callbackCount$paging_common() {
        return this.callbacks.size();
    }

    public final boolean getInvalid$paging_common() {
        return this.invalid;
    }

    public final void invalidate$paging_common() {
        List<T> list;
        if (this.invalid) {
            return;
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (getInvalid$paging_common()) {
                return;
            }
            this.invalid = true;
            list = CollectionsKt___CollectionsKt.toList(this.callbacks);
            this.callbacks.clear();
            Unit unit = Unit.INSTANCE;
            if (list == null) {
                return;
            }
            Function1<T, Unit> function1 = this.callbackInvoker;
            for (T t9 : list) {
                function1.invoke(t9);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void registerInvalidatedCallback$paging_common(T t9) {
        Function0<Boolean> function0 = this.invalidGetter;
        boolean z9 = false;
        if (function0 != null && function0.invoke().booleanValue()) {
            invalidate$paging_common();
        }
        if (this.invalid) {
            this.callbackInvoker.invoke(t9);
            return;
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            if (getInvalid$paging_common()) {
                Unit unit = Unit.INSTANCE;
                z9 = true;
            } else {
                this.callbacks.add(t9);
            }
            if (z9) {
                this.callbackInvoker.invoke(t9);
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void unregisterInvalidatedCallback$paging_common(T t9) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            this.callbacks.remove(t9);
        } finally {
            reentrantLock.unlock();
        }
    }

    public /* synthetic */ InvalidateCallbackTracker(Function1 function1, Function0 function0, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i4 & 2) != 0 ? null : function0);
    }
}
