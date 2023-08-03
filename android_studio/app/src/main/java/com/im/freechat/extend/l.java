package com.im.freechat.extend;

import android.app.Dialog;
import android.widget.Toast;
import androidx.annotation.StringRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DialogExtends.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001¨\u0006\u0005"}, d2 = {"Landroid/app/Dialog;", "", "stringRes", "", "a", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class l {
    public static final void a(@m8.g Dialog dialog, @StringRes int i4) {
        Intrinsics.checkNotNullParameter(dialog, "<this>");
        Toast.makeText(dialog.getContext(), i4, 0).show();
    }
}
