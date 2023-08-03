package com.jakewharton.rxbinding4.widget;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: AdapterViewItemSelectionObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007¨\u0006\u0006"}, d2 = {"Landroid/widget/Adapter;", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/widget/AdapterView;", "Lcom/jakewharton/rxbinding4/a;", "", "a", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxAdapterView")
/* loaded from: classes3.dex */
final /* synthetic */ class e0 {
    @CheckResult
    @m8.g
    public static final <T extends Adapter> com.jakewharton.rxbinding4.a<Integer> a(@m8.g AdapterView<T> adapterView) {
        return new k(adapterView);
    }
}
