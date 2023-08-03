package com.jakewharton.rxbinding4.widget;

import android.widget.Adapter;
import androidx.annotation.CheckResult;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;

/* compiled from: AdapterDataChangeObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroid/widget/Adapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/jakewharton/rxbinding4/a;", "a", "(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding4/a;", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxAdapter")
/* loaded from: classes3.dex */
final /* synthetic */ class g0 {
    @CheckResult
    @m8.g
    public static final <T extends Adapter> com.jakewharton.rxbinding4.a<T> a(@m8.g T t9) {
        return new c(t9);
    }
}
