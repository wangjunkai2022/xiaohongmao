package com.jakewharton.rxbinding4.widget;

import android.view.MenuItem;
import android.widget.Toolbar;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.Unit;

@Metadata(bv = {}, d1 = {"com/jakewharton/rxbinding4/widget/j1", "com/jakewharton/rxbinding4/widget/k1"}, d2 = {}, k = 4, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class i1 {
    @CheckResult
    @RequiresApi(21)
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<MenuItem> a(@m8.g Toolbar toolbar) {
        return j1.a(toolbar);
    }

    @CheckResult
    @RequiresApi(21)
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> b(@m8.g Toolbar toolbar) {
        return k1.a(toolbar);
    }
}
