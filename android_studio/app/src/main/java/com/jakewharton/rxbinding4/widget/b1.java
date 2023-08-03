package com.jakewharton.rxbinding4.widget;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;

@Metadata(bv = {}, d1 = {"com/jakewharton/rxbinding4/widget/c1", "com/jakewharton/rxbinding4/widget/d1", "com/jakewharton/rxbinding4/widget/e1", "com/jakewharton/rxbinding4/widget/f1", "com/jakewharton/rxbinding4/widget/g1", "com/jakewharton/rxbinding4/widget/h1"}, d2 = {}, k = 4, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class b1 {
    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<u1> a(@m8.g TextView textView) {
        return c1.a(textView);
    }

    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<w1> b(@m8.g TextView textView) {
        return d1.a(textView);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<y1> c(@m8.g TextView textView) {
        return e1.c(textView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<y1> d(@m8.g TextView textView, @m8.g Function1<? super y1, Boolean> function1) {
        return e1.b(textView, function1);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Integer> f(@m8.g TextView textView) {
        return f1.c(textView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Integer> g(@m8.g TextView textView, @m8.g Function1<? super Integer, Boolean> function1) {
        return f1.b(textView, function1);
    }

    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<b2> i(@m8.g TextView textView) {
        return g1.a(textView);
    }

    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<CharSequence> j(@m8.g TextView textView) {
        return h1.a(textView);
    }
}
