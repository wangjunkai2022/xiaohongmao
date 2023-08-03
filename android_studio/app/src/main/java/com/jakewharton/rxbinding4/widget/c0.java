package com.jakewharton.rxbinding4.widget;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.f;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;

/* compiled from: AdapterViewItemLongClickEventObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a8\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00022\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0007¨\u0006\t"}, d2 = {"Landroid/widget/Adapter;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/widget/AdapterView;", "Lkotlin/Function1;", "Lcom/jakewharton/rxbinding4/widget/g;", "", f.b.f83682d, "Lio/reactivex/rxjava3/core/g0;", "b", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxAdapterView")
/* loaded from: classes3.dex */
public final /* synthetic */ class c0 {
    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<g> a(@m8.g AdapterView<T> adapterView) {
        return c(adapterView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @m8.g
    public static final <T extends Adapter> io.reactivex.rxjava3.core.g0<g> b(@m8.g AdapterView<T> adapterView, @m8.g Function1<? super g, Boolean> function1) {
        return new h(adapterView, function1);
    }

    public static /* synthetic */ io.reactivex.rxjava3.core.g0 c(AdapterView adapterView, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = q4.a.f93143a;
        }
        return z.d(adapterView, function1);
    }
}
