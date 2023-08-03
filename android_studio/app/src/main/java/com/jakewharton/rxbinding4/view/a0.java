package com.jakewharton.rxbinding4.view;

import android.view.View;
import androidx.annotation.CheckResult;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: ViewTreeObserverPreDrawObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0007¨\u0006\u0007"}, d2 = {"Landroid/view/View;", "Lkotlin/Function0;", "", "proceedDrawingPass", "Lio/reactivex/rxjava3/core/g0;", "", "a", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/view/RxView")
/* loaded from: classes3.dex */
final /* synthetic */ class a0 {
    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<Unit> a(@m8.g View view, @m8.g Function0<Boolean> function0) {
        return new a1(view, function0);
    }
}
