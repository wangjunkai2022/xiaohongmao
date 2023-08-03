package p5;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.a;
import io.sentry.protocol.r;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: PermissionUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b+\u0010,J\b\u0010\u0003\u001a\u00020\u0002H\u0002J!\u0010\b\u001a\u00020\u0002*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\u000b\u001a\u00020\u0002*\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0007J\u0015\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0007¢\u0006\u0004\b\u000e\u0010\rJ,\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012H\u0007J,\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0007J\u0012\u0010\u001a\u001a\u00020\u0006*\b\u0012\u0004\u0012\u00020\u00060\u0011H\u0002J\u001e\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010 \u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0018\u0010$\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u0017H\u0002Jd\u0010*\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00020%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0018\u0010(\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0011\u0012\u0004\u0012\u00020\u00130'2\u0018\u0010)\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0011\u0012\u0004\u0012\u00020\u00130'¨\u0006-"}, d2 = {"Lp5/e;", "", "", "m", "Landroid/content/Context;", "", "", a.b.f83633h, "g", "(Landroid/content/Context;[Ljava/lang/String;)Z", "permission", "e", ContextChain.TAG_INFRA, "()[Ljava/lang/String;", "w", "Landroid/app/Activity;", "activity", "", "Lkotlin/Function0;", "", "positiveListener", "p", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "activityResultLauncher", "s", "j", "v", "context", "h", "l", y.b.f83920h, y.b.f83919g, "o", "n", "intent", "k", "", "onPermissionsGranted", "Lkotlin/Function1;", "onPermissionsDenied", "onPermissionsShowRationale", "f", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final e f93099a = new e();

    private e() {
    }

    @JvmStatic
    public static final boolean e(@m8.g Context context, @m8.g String permission) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(permission, "permission");
        return ContextCompat.checkSelfPermission(context, permission) == 0;
    }

    @JvmStatic
    public static final boolean g(@m8.g Context context, @m8.g String[] permissions) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        for (String str : permissions) {
            if (!e(context, str)) {
                return false;
            }
        }
        return true;
    }

    private final Intent h(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(r.b.f83833i, context.getPackageName(), null));
        return intent;
    }

    @JvmStatic
    @m8.g
    public static final String[] i() {
        List listOfNotNull;
        String[] strArr = new String[2];
        strArr[0] = "android.permission.WRITE_EXTERNAL_STORAGE";
        strArr[1] = Build.VERSION.SDK_INT > 30 ? h.f93108a : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) strArr);
        Object[] array = listOfNotNull.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
        if (r1.equals("android.permission.ACCESS_COARSE_LOCATION") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0059, code lost:
        if (r1.equals(p5.h.f93108a) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005c, code lost:
        r1 = "蓝牙/附近的设备";
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0065, code lost:
        if (r1.equals("android.permission.ACCESS_FINE_LOCATION") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        r1 = "地点";
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        if (r1.equals(p5.h.f93109b) == false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String j(java.util.List<java.lang.String> r12) {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r12 = r12.iterator()
        L9:
            boolean r1 = r12.hasNext()
            if (r1 == 0) goto L72
            java.lang.Object r1 = r12.next()
            java.lang.String r1 = (java.lang.String) r1
            int r2 = r1.hashCode()
            switch(r2) {
                case -1888586689: goto L5f;
                case -798669607: goto L53;
                case -63024214: goto L4a;
                case 463403621: goto L3e;
                case 1365911975: goto L32;
                case 1831139720: goto L26;
                case 2062356686: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L6b
        L1d:
            java.lang.String r2 = "android.permission.BLUETOOTH_SCAN"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L5c
            goto L6b
        L26:
            java.lang.String r2 = "android.permission.RECORD_AUDIO"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L2f
            goto L6b
        L2f:
            java.lang.String r1 = "声音的"
            goto L6c
        L32:
            java.lang.String r2 = "android.permission.WRITE_EXTERNAL_STORAGE"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3b
            goto L6b
        L3b:
            java.lang.String r1 = "贮存"
            goto L6c
        L3e:
            java.lang.String r2 = "android.permission.CAMERA"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L47
            goto L6b
        L47:
            java.lang.String r1 = "相机"
            goto L6c
        L4a:
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L68
            goto L6b
        L53:
            java.lang.String r2 = "android.permission.BLUETOOTH_CONNECT"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L5c
            goto L6b
        L5c:
            java.lang.String r1 = "蓝牙/附近的设备"
            goto L6c
        L5f:
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L68
            goto L6b
        L68:
            java.lang.String r1 = "地点"
            goto L6c
        L6b:
            r1 = 0
        L6c:
            if (r1 == 0) goto L9
            r0.add(r1)
            goto L9
        L72:
            java.util.List r2 = kotlin.collections.CollectionsKt.distinct(r0)
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 62
            r10 = 0
            java.lang.String r3 = "\n"
            java.lang.String r12 = kotlin.collections.CollectionsKt.joinToString$default(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: p5.e.j(java.util.List):java.lang.String");
    }

    private final boolean k(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    private final Intent l(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity");
        return k(context, intent) ? intent : h(context);
    }

    private final boolean m() {
        return Build.VERSION.SDK_INT > 29;
    }

    private final Intent n(Context context) {
        Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity");
        return k(context, intent) ? intent : h(context);
    }

    private final Intent o(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity");
        if (k(context, intent)) {
            return intent;
        }
        intent.setClassName("com.oppo.safe", "com.oppo.safe.permission.PermissionAppListActivity");
        return k(context, intent) ? intent : h(context);
    }

    @JvmStatic
    public static final void p(@m8.g final Activity activity, @m8.g List<String> permissions, @m8.g final Function0<Unit> positiveListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(positiveListener, "positiveListener");
        new AlertDialog.Builder(activity).setCancelable(false).setMessage(activity.getString(R.string.message_permission_rationale, new Object[]{f93099a.j(permissions)})).setPositiveButton(R.string.commit, new DialogInterface.OnClickListener() { // from class: p5.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                e.r(activity, positiveListener, dialogInterface, i4);
            }
        }).setNegativeButton(R.string.cancel, d.f93098a).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DialogInterface dialogInterface, int i4) {
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Activity activity, Function0 positiveListener, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(positiveListener, "$positiveListener");
        if (activity.isFinishing()) {
            return;
        }
        positiveListener.invoke();
    }

    @JvmStatic
    public static final void s(@m8.g final Activity activity, @m8.g List<String> permissions, @m8.g final ActivityResultLauncher<Intent> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(activityResultLauncher, "activityResultLauncher");
        new AlertDialog.Builder(activity).setCancelable(false).setMessage(activity.getString(R.string.message_permission_always_failed, new Object[]{f93099a.j(permissions)})).setPositiveButton(R.string.setting, new DialogInterface.OnClickListener() { // from class: p5.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                e.t(activity, activityResultLauncher, dialogInterface, i4);
            }
        }).setNegativeButton(R.string.cancel, c.f93097a).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(Activity activity, ActivityResultLauncher activityResultLauncher, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(activityResultLauncher, "$activityResultLauncher");
        f93099a.v(activity, activityResultLauncher);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u(DialogInterface dialogInterface, int i4) {
        dialogInterface.dismiss();
    }

    private final void v(Activity activity, ActivityResultLauncher<Intent> activityResultLauncher) {
        boolean contains$default;
        boolean contains$default2;
        boolean contains$default3;
        boolean contains$default4;
        boolean contains$default5;
        Intent n9;
        try {
            String MANUFACTURER = Build.MANUFACTURER;
            Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
            String lowerCase = MANUFACTURER.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "huawei", false, 2, (Object) null);
            if (contains$default) {
                n9 = f93099a.l(activity);
            } else {
                contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "xiaomi", false, 2, (Object) null);
                if (contains$default2) {
                    n9 = f93099a.y(activity);
                } else {
                    contains$default3 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "oppo", false, 2, (Object) null);
                    if (contains$default3) {
                        n9 = f93099a.o(activity);
                    } else {
                        contains$default4 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "vivo", false, 2, (Object) null);
                        if (contains$default4) {
                            n9 = f93099a.x(activity);
                        } else {
                            contains$default5 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "meizu", false, 2, (Object) null);
                            n9 = contains$default5 ? f93099a.n(activity) : f93099a.h(activity);
                        }
                    }
                }
            }
            activityResultLauncher.launch(n9);
        } catch (Exception unused) {
            activityResultLauncher.launch(h(activity));
        }
    }

    @JvmStatic
    @m8.g
    public static final String[] w() {
        List listOfNotNull;
        String[] strArr = new String[4];
        strArr[0] = "android.permission.RECORD_AUDIO";
        strArr[1] = "android.permission.CAMERA";
        int i4 = Build.VERSION.SDK_INT;
        strArr[2] = i4 > 30 ? h.f93109b : null;
        strArr[3] = i4 > 30 ? h.f93108a : null;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) strArr);
        Object[] array = listOfNotNull.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    private final Intent x(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packagename", context.getPackageName());
        intent.setClassName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity");
        if (k(context, intent)) {
            return intent;
        }
        intent.setClassName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity");
        return k(context, intent) ? intent : h(context);
    }

    private final Intent y(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.putExtra("extra_pkgname", context.getPackageName());
        if (k(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        if (k(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        return k(context, intent) ? intent : h(context);
    }

    public final void f(@m8.g Activity activity, @m8.g Map<String, Boolean> permissions, @m8.g Function0<Unit> onPermissionsGranted, @m8.g Function1<? super List<String>, Unit> onPermissionsDenied, @m8.g Function1<? super List<String>, Unit> onPermissionsShowRationale) {
        int collectionSizeOrDefault;
        List plus;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(onPermissionsGranted, "onPermissionsGranted");
        Intrinsics.checkNotNullParameter(onPermissionsDenied, "onPermissionsDenied");
        Intrinsics.checkNotNullParameter(onPermissionsShowRationale, "onPermissionsShowRationale");
        Set<Map.Entry<String, Boolean>> entrySet = permissions.entrySet();
        ArrayList<Map.Entry> arrayList = new ArrayList();
        for (Object obj : entrySet) {
            if (!((Boolean) ((Map.Entry) obj).getValue()).booleanValue()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : arrayList) {
            String str = (Build.VERSION.SDK_INT < 23 || !activity.shouldShowRequestPermissionRationale((String) entry.getKey())) ? null : (String) entry.getKey();
            if (str != null) {
                arrayList2.add(str);
            }
        }
        Set<Map.Entry<String, Boolean>> entrySet2 = permissions.entrySet();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : entrySet2) {
            if (!((Boolean) ((Map.Entry) obj2).getValue()).booleanValue()) {
                arrayList3.add(obj2);
            }
        }
        ArrayList<Map.Entry> arrayList4 = new ArrayList();
        for (Object obj3 : arrayList3) {
            if (!arrayList2.contains(((Map.Entry) obj3).getKey())) {
                arrayList4.add(obj3);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList4, 10);
        ArrayList arrayList5 = new ArrayList(collectionSizeOrDefault);
        for (Map.Entry entry2 : arrayList4) {
            arrayList5.add((String) entry2.getKey());
        }
        if (!arrayList2.isEmpty()) {
            plus = CollectionsKt___CollectionsKt.plus((Collection) arrayList2, (Iterable) arrayList5);
            onPermissionsShowRationale.invoke(plus);
        } else if (!arrayList5.isEmpty()) {
            onPermissionsDenied.invoke(arrayList5);
        } else {
            onPermissionsGranted.invoke();
        }
    }
}
