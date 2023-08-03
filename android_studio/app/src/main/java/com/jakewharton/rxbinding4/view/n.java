package com.jakewharton.rxbinding4.view;

import android.view.View;
import androidx.annotation.CheckResult;
import kotlin.Metadata;
import kotlin.Unit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewClickObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007¨\u0006\u0004"}, d2 = {"Landroid/view/View;", "Lio/reactivex/rxjava3/core/g0;", "", "a", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/view/RxView")
/* loaded from: classes3.dex */
public final /* synthetic */ class n {
    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> a(@m8.g View view) {
        return new h0(view);
    }
}
