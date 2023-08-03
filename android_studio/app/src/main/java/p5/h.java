package p5;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
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
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001af\u0010\f\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006 \u000b*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n0\n0\t*\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u0018\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00020\u0004\u001af\u0010\u000e\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006 \u000b*\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n0\n0\t*\u00020\r2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0018\u0010\u0007\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00020\u00042\u0018\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u00020\u0004¨\u0006\u000f"}, d2 = {"Landroidx/appcompat/app/AppCompatActivity;", "Lkotlin/Function0;", "", "onPermissionsGranted", "Lkotlin/Function1;", "", "", "onPermissionsDenied", "onPermissionsShowRationale", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "c", "Landroidx/fragment/app/Fragment;", "d", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class h {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final String f93108a = "android.permission.BLUETOOTH_CONNECT";
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final String f93109b = "android.permission.BLUETOOTH_SCAN";

    @m8.g
    public static final ActivityResultLauncher<String[]> c(@m8.g final AppCompatActivity appCompatActivity, @m8.g final Function0<Unit> onPermissionsGranted, @m8.g final Function1<? super List<String>, Unit> onPermissionsDenied, @m8.g final Function1<? super List<String>, Unit> onPermissionsShowRationale) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<this>");
        Intrinsics.checkNotNullParameter(onPermissionsGranted, "onPermissionsGranted");
        Intrinsics.checkNotNullParameter(onPermissionsDenied, "onPermissionsDenied");
        Intrinsics.checkNotNullParameter(onPermissionsShowRationale, "onPermissionsShowRationale");
        ActivityResultLauncher<String[]> registerForActivityResult = appCompatActivity.registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: p5.f
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                h.e(AppCompatActivity.this, onPermissionsGranted, onPermissionsDenied, onPermissionsShowRationale, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ionsShowRationale\n    )\n}");
        return registerForActivityResult;
    }

    @m8.g
    public static final ActivityResultLauncher<String[]> d(@m8.g final Fragment fragment, @m8.g final Function0<Unit> onPermissionsGranted, @m8.g final Function1<? super List<String>, Unit> onPermissionsDenied, @m8.g final Function1<? super List<String>, Unit> onPermissionsShowRationale) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(onPermissionsGranted, "onPermissionsGranted");
        Intrinsics.checkNotNullParameter(onPermissionsDenied, "onPermissionsDenied");
        Intrinsics.checkNotNullParameter(onPermissionsShowRationale, "onPermissionsShowRationale");
        ActivityResultLauncher<String[]> registerForActivityResult = fragment.registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: p5.g
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                h.f(Fragment.this, onPermissionsGranted, onPermissionsDenied, onPermissionsShowRationale, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ionsShowRationale\n    )\n}");
        return registerForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(AppCompatActivity this_requestPermissionLauncher, Function0 onPermissionsGranted, Function1 onPermissionsDenied, Function1 onPermissionsShowRationale, Map result) {
        Intrinsics.checkNotNullParameter(this_requestPermissionLauncher, "$this_requestPermissionLauncher");
        Intrinsics.checkNotNullParameter(onPermissionsGranted, "$onPermissionsGranted");
        Intrinsics.checkNotNullParameter(onPermissionsDenied, "$onPermissionsDenied");
        Intrinsics.checkNotNullParameter(onPermissionsShowRationale, "$onPermissionsShowRationale");
        Intrinsics.checkNotNullParameter(result, "result");
        e.f93099a.f(this_requestPermissionLauncher, result, onPermissionsGranted, onPermissionsDenied, onPermissionsShowRationale);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Fragment this_requestPermissionLauncher, Function0 onPermissionsGranted, Function1 onPermissionsDenied, Function1 onPermissionsShowRationale, Map result) {
        Intrinsics.checkNotNullParameter(this_requestPermissionLauncher, "$this_requestPermissionLauncher");
        Intrinsics.checkNotNullParameter(onPermissionsGranted, "$onPermissionsGranted");
        Intrinsics.checkNotNullParameter(onPermissionsDenied, "$onPermissionsDenied");
        Intrinsics.checkNotNullParameter(onPermissionsShowRationale, "$onPermissionsShowRationale");
        Intrinsics.checkNotNullParameter(result, "result");
        e eVar = e.f93099a;
        FragmentActivity requireActivity = this_requestPermissionLauncher.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        eVar.f(requireActivity, result, onPermissionsGranted, onPermissionsDenied, onPermissionsShowRationale);
    }
}
