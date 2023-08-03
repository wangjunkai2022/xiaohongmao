package com.jakewharton.rxbinding4.widget;

import android.view.MenuItem;
import android.widget.PopupMenu;
import androidx.annotation.CheckResult;
import kotlin.Metadata;

/* compiled from: PopupMenuItemClickObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u0007¨\u0006\u0004"}, d2 = {"Landroid/widget/PopupMenu;", "Lio/reactivex/rxjava3/core/g0;", "Landroid/view/MenuItem;", "a", "rxbinding_release"}, k = 5, mv = {1, 4, 0}, xs = "com/jakewharton/rxbinding4/widget/RxPopupMenu")
/* loaded from: classes3.dex */
final /* synthetic */ class n0 {
    @CheckResult
    @m8.g
    public static final io.reactivex.rxjava3.core.g0<MenuItem> a(@m8.g PopupMenu popupMenu) {
        return new r(popupMenu);
    }
}
