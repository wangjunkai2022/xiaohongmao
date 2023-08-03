package com.jakewharton.rxbinding4.view;

import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

@Metadata(bv = {}, d1 = {"com/jakewharton/rxbinding4/view/l", "com/jakewharton/rxbinding4/view/m", "com/jakewharton/rxbinding4/view/n", "com/jakewharton/rxbinding4/view/o", "com/jakewharton/rxbinding4/view/p", "com/jakewharton/rxbinding4/view/q", "com/jakewharton/rxbinding4/view/r", "com/jakewharton/rxbinding4/view/s", "com/jakewharton/rxbinding4/view/t", "com/jakewharton/rxbinding4/view/u", "com/jakewharton/rxbinding4/view/v", "com/jakewharton/rxbinding4/view/w", "com/jakewharton/rxbinding4/view/x", "com/jakewharton/rxbinding4/view/y", "com/jakewharton/rxbinding4/view/z", "com/jakewharton/rxbinding4/view/a0", "com/jakewharton/rxbinding4/view/b0"}, d2 = {}, k = 4, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class i {
    @CheckResult
    @JvmOverloads
    @m8.g
    public static final q7.g<? super Boolean> B(@m8.g View view) {
        return b0.c(view, 0, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final q7.g<? super Boolean> C(@m8.g View view, int i4) {
        return b0.b(view, i4);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<e0> a(@m8.g View view) {
        return l.a(view);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> b(@m8.g View view) {
        return m.a(view);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> c(@m8.g View view) {
        return n.a(view);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> d(@m8.g View view) {
        return m.b(view);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<DragEvent> e(@m8.g View view) {
        return o.c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<DragEvent> f(@m8.g View view, @m8.g Function1<? super DragEvent, Boolean> function1) {
        return o.b(view, function1);
    }

    @CheckResult
    @RequiresApi(16)
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> h(@m8.g View view) {
        return y.a(view);
    }

    @CheckResult
    @m8.g
    public static final com.jakewharton.rxbinding4.a<Boolean> i(@m8.g View view) {
        return p.a(view);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> j(@m8.g View view) {
        return z.a(view);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<MotionEvent> k(@m8.g View view) {
        return q.c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<MotionEvent> l(@m8.g View view, @m8.g Function1<? super MotionEvent, Boolean> function1) {
        return q.b(view, function1);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<KeyEvent> n(@m8.g View view) {
        return r.c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<KeyEvent> o(@m8.g View view, @m8.g Function1<? super KeyEvent, Boolean> function1) {
        return r.b(view, function1);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<q0> q(@m8.g View view) {
        return s.a(view);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> r(@m8.g View view) {
        return t.a(view);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> s(@m8.g View view) {
        return u.c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> t(@m8.g View view, @m8.g Function0<Boolean> function0) {
        return u.b(view, function0);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> v(@m8.g View view, @m8.g Function0<Boolean> function0) {
        return a0.a(view, function0);
    }

    @CheckResult
    @RequiresApi(23)
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<u0> w(@m8.g View view) {
        return v.a(view);
    }

    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Integer> x(@m8.g View view) {
        return w.a(view);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<MotionEvent> y(@m8.g View view) {
        return x.c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<MotionEvent> z(@m8.g View view, @m8.g Function1<? super MotionEvent, Boolean> function1) {
        return x.b(view, function1);
    }
}
