package com.jakewharton.rxbinding4.view;

import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.CheckResult;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;

/* compiled from: ViewKeyObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a(\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u00002\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0007¨\u0006\u0007"}, d2 = {"Landroid/view/View;", "Lkotlin/Function1;", "Landroid/view/KeyEvent;", "", f.b.f83682d, "Lio/reactivex/rxjava3/core/g0;", "b", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/view/RxView")
/* loaded from: classes3.dex */
public final /* synthetic */ class r {
    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<KeyEvent> a(@m8.g View view) {
        return c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<KeyEvent> b(@m8.g View view, @m8.g Function1<? super KeyEvent, Boolean> function1) {
        return new p0(view, function1);
    }

    public static /* synthetic */ io.reactivex.rxjava3.core.g0 c(View view, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = q4.a.f93143a;
        }
        return i.o(view, function1);
    }
}
