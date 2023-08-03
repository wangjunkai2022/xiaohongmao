package com.im.freechat.utils;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PermissionUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\u001af\u0010\f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006 \u000b*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n0\n0\t*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u0018\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00020\u0004¨\u0006\r"}, d2 = {"Landroidx/fragment/app/Fragment;", "Lkotlin/Function0;", "", "onPermissionsGranted", "Lkotlin/Function1;", "", "", "onPermissionsDenied", "onPermissionsShowRationale", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "b", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class t {
    @m8.g
    public static final ActivityResultLauncher<String[]> b(@m8.g final Fragment fragment, @m8.g final Function0<Unit> onPermissionsGranted, @m8.g final Function1<? super List<String>, Unit> onPermissionsDenied, @m8.g final Function1<? super List<String>, Unit> onPermissionsShowRationale) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(onPermissionsGranted, "onPermissionsGranted");
        Intrinsics.checkNotNullParameter(onPermissionsDenied, "onPermissionsDenied");
        Intrinsics.checkNotNullParameter(onPermissionsShowRationale, "onPermissionsShowRationale");
        ActivityResultLauncher<String[]> registerForActivityResult = fragment.registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: com.im.freechat.utils.s
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                t.c(Fragment.this, onPermissionsGranted, onPermissionsDenied, onPermissionsShowRationale, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ionsShowRationale\n    )\n}");
        return registerForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(Fragment this_requestPermissionLauncher, Function0 onPermissionsGranted, Function1 onPermissionsDenied, Function1 onPermissionsShowRationale, Map result) {
        Intrinsics.checkNotNullParameter(this_requestPermissionLauncher, "$this_requestPermissionLauncher");
        Intrinsics.checkNotNullParameter(onPermissionsGranted, "$onPermissionsGranted");
        Intrinsics.checkNotNullParameter(onPermissionsDenied, "$onPermissionsDenied");
        Intrinsics.checkNotNullParameter(onPermissionsShowRationale, "$onPermissionsShowRationale");
        Intrinsics.checkNotNullParameter(result, "result");
        r rVar = r.f43826a;
        FragmentActivity requireActivity = this_requestPermissionLauncher.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        rVar.f(requireActivity, result, onPermissionsGranted, onPermissionsDenied, onPermissionsShowRationale);
    }
}
