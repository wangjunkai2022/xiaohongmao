package com.qennnsad.aknkaksd.presentation.ui.main;

import android.widget.RelativeLayout;
import e5.k1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MainFragmentFlavorController.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/MainFragment;", "", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class s {
    public static final void a(@m8.g MainFragment mainFragment) {
        Intrinsics.checkNotNullParameter(mainFragment, "<this>");
        RelativeLayout relativeLayout = ((k1) mainFragment.m0()).f62641g;
        Intrinsics.checkNotNullExpressionValue(relativeLayout, "requireBinding().mainRlMall");
        relativeLayout.setVisibility(0);
        RelativeLayout relativeLayout2 = ((k1) mainFragment.m0()).f62643i;
        Intrinsics.checkNotNullExpressionValue(relativeLayout2, "requireBinding().mainRlPush");
        relativeLayout2.setVisibility(8);
    }
}
