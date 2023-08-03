package com.jakewharton.rxbinding4.widget;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

@Metadata(bv = {}, d1 = {"com/jakewharton/rxbinding4/widget/a0", "com/jakewharton/rxbinding4/widget/b0", "com/jakewharton/rxbinding4/widget/c0", "com/jakewharton/rxbinding4/widget/d0", "com/jakewharton/rxbinding4/widget/e0", "com/jakewharton/rxbinding4/widget/f0"}, d2 = {}, k = 4, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class z {
    @CheckResult
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<d> a(@m8.g AdapterView<T> adapterView) {
        return a0.a(adapterView);
    }

    @CheckResult
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<Integer> b(@m8.g AdapterView<T> adapterView) {
        return b0.a(adapterView);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<g> c(@m8.g AdapterView<T> adapterView) {
        return c0.c(adapterView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<g> d(@m8.g AdapterView<T> adapterView, @m8.g Function1<? super g, Boolean> function1) {
        return c0.b(adapterView, function1);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<Integer> f(@m8.g AdapterView<T> adapterView) {
        return d0.c(adapterView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<Integer> g(@m8.g AdapterView<T> adapterView, @m8.g Function0<Boolean> function0) {
        return d0.b(adapterView, function0);
    }

    @CheckResult
    @m8.g
    public static final <T extends Adapter> com.jakewharton.rxbinding4.a<Integer> i(@m8.g AdapterView<T> adapterView) {
        return e0.a(adapterView);
    }

    @CheckResult
    @m8.g
    public static final <T extends Adapter> com.jakewharton.rxbinding4.a<m> j(@m8.g AdapterView<T> adapterView) {
        return f0.a(adapterView);
    }
}
