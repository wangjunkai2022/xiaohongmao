package com.qennnsad.aknkaksd.util;

import android.view.View;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RxView.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0007¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/util/f1;", "", "Landroid/view/View;", "view", "Lio/reactivex/rxjava3/core/g0;", "", "b", "c", "Ljava/lang/Runnable;", "runnable", "d", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final f1 f54707a = new f1();

    private f1() {
    }

    @JvmStatic
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> b(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return com.jakewharton.rxbinding4.view.i.c(view);
    }

    @JvmStatic
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> c(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        return com.jakewharton.rxbinding4.view.u.c(view, null, 1, null);
    }

    @JvmStatic
    public static final void d(@m8.g View view, @m8.g final Runnable runnable) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        com.jakewharton.rxbinding4.view.i.c(view).M6(50L, TimeUnit.MILLISECONDS).a6(new q7.g() { // from class: com.qennnsad.aknkaksd.util.e1
            @Override // q7.g
            public final void accept(Object obj) {
                f1.e(runnable, (Unit) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(Runnable runnable, Unit unit) {
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        runnable.run();
    }
}
