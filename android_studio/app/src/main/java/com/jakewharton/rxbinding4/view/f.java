package com.jakewharton.rxbinding4.view;

import android.view.MenuItem;
import androidx.annotation.CheckResult;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;

@Metadata(bv = {}, d1 = {"com/jakewharton/rxbinding4/view/g", "com/jakewharton/rxbinding4/view/h"}, d2 = {}, k = 4, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class f {
    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<b> a(@m8.g MenuItem menuItem) {
        return g.c(menuItem, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<b> b(@m8.g MenuItem menuItem, @m8.g Function1<? super b, Boolean> function1) {
        return g.b(menuItem, function1);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> d(@m8.g MenuItem menuItem) {
        return h.c(menuItem, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> e(@m8.g MenuItem menuItem, @m8.g Function1<? super MenuItem, Boolean> function1) {
        return h.b(menuItem, function1);
    }
}
