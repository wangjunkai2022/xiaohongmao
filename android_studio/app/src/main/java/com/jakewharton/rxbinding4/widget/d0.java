package com.jakewharton.rxbinding4.widget;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdapterViewItemLongClickObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a2\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0007¨\u0006\t"}, d2 = {"Landroid/widget/Adapter;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/widget/AdapterView;", "Lkotlin/Function0;", "", f.b.f83682d, "Lio/reactivex/rxjava3/core/g0;", "", "b", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxAdapterView")
/* loaded from: classes3.dex */
public final /* synthetic */ class d0 {
    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<Integer> a(@m8.g AdapterView<T> adapterView) {
        return z.h(adapterView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<Integer> b(@m8.g AdapterView<T> adapterView, @m8.g Function0<Boolean> function0) {
        return new i(adapterView, function0);
    }

    public static /* synthetic */ io.reactivex.rxjava3.core.g0 c(AdapterView adapterView, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function0 = q4.a.f93143a;
        }
        return z.g(adapterView, function0);
    }
}
