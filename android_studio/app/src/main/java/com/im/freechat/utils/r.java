package com.im.freechat.utils;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.a;
import io.sentry.protocol.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: PermissionUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b'\u0010(J\u0012\u0010\u0004\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\bH\u0002Jd\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00150\u00172\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\n0\u00192\u0018\u0010\u001c\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\n0\u001b2\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\n0\u001bJ\u001f\u0010 \u001a\u00020\u0015*\u00020\f2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u001f¢\u0006\u0004\b \u0010!J\u0012\u0010#\u001a\u00020\u0015*\u00020\f2\u0006\u0010\"\u001a\u00020\u0003J*\u0010%\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\n0\u0019J*\u0010&\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¨\u0006)"}, d2 = {"Lcom/im/freechat/utils/r;", "", "", "", ContextChain.TAG_INFRA, "Landroid/app/Activity;", "activity", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "activityResultLauncher", "", "t", "Landroid/content/Context;", "context", "h", "k", "v", "u", "m", "l", "intent", "", "j", "", a.b.f83633h, "Lkotlin/Function0;", "onPermissionsGranted", "Lkotlin/Function1;", "onPermissionsDenied", "onPermissionsShowRationale", "f", "", "g", "(Landroid/content/Context;[Ljava/lang/String;)Z", "permission", "e", "positiveListener", "n", "q", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class r {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final r f43826a = new r();

    private r() {
    }

    private final Intent h(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts(r.b.f83833i, context.getPackageName(), null));
        return intent;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0047, code lost:
        if (r1.equals("android.permission.ACCESS_COARSE_LOCATION") == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
        if (r1.equals("android.permission.ACCESS_FINE_LOCATION") == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0053, code lost:
        r1 = "地点";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String i(java.util.List<java.lang.String> r12) {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r12 = r12.iterator()
        L9:
            boolean r1 = r12.hasNext()
            if (r1 == 0) goto L5d
            java.lang.Object r1 = r12.next()
            java.lang.String r1 = (java.lang.String) r1
            int r2 = r1.hashCode()
            switch(r2) {
                case -1888586689: goto L4a;
                case -63024214: goto L41;
                case 463403621: goto L35;
                case 1365911975: goto L29;
                case 1831139720: goto L1d;
                default: goto L1c;
            }
        L1c:
            goto L56
        L1d:
            java.lang.String r2 = "android.permission.RECORD_AUDIO"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L26
            goto L56
        L26:
            java.lang.String r1 = "声音的"
            goto L57
        L29:
            java.lang.String r2 = "android.permission.WRITE_EXTERNAL_STORAGE"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L32
            goto L56
        L32:
            java.lang.String r1 = "贮存"
            goto L57
        L35:
            java.lang.String r2 = "android.permission.CAMERA"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3e
            goto L56
        L3e:
            java.lang.String r1 = "相机"
            goto L57
        L41:
            java.lang.String r2 = "android.permission.ACCESS_COARSE_LOCATION"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L53
            goto L56
        L4a:
            java.lang.String r2 = "android.permission.ACCESS_FINE_LOCATION"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L53
            goto L56
        L53:
            java.lang.String r1 = "地点"
            goto L57
        L56:
            r1 = 0
        L57:
            if (r1 == 0) goto L9
            r0.add(r1)
            goto L9
        L5d:
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
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.utils.r.i(java.util.List):java.lang.String");
    }

    private final boolean j(Context context, Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    private final Intent k(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.huawei.systemmanager", "com.huawei.permissionmanager.ui.MainActivity");
        return j(context, intent) ? intent : h(context);
    }

    private final Intent l(Context context) {
        Intent intent = new Intent("com.meizu.safe.security.SHOW_APPSEC");
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity");
        return j(context, intent) ? intent : h(context);
    }

    private final Intent m(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packageName", context.getPackageName());
        intent.setClassName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity");
        if (j(context, intent)) {
            return intent;
        }
        intent.setClassName("com.oppo.safe", "com.oppo.safe.permission.PermissionAppListActivity");
        return j(context, intent) ? intent : h(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(Activity activity, Function0 positiveListener, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(positiveListener, "$positiveListener");
        if (activity.isFinishing()) {
            return;
        }
        positiveListener.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(DialogInterface dialogInterface, int i4) {
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(Activity activity, ActivityResultLauncher activityResultLauncher, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(activityResultLauncher, "$activityResultLauncher");
        f43826a.t(activity, activityResultLauncher);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(DialogInterface dialogInterface, int i4) {
        dialogInterface.dismiss();
    }

    private final void t(Activity activity, ActivityResultLauncher<Intent> activityResultLauncher) {
        boolean contains$default;
        boolean contains$default2;
        boolean contains$default3;
        boolean contains$default4;
        boolean contains$default5;
        Intent l10;
        try {
            String MANUFACTURER = Build.MANUFACTURER;
            Intrinsics.checkNotNullExpressionValue(MANUFACTURER, "MANUFACTURER");
            String lowerCase = MANUFACTURER.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "huawei", false, 2, (Object) null);
            if (contains$default) {
                l10 = f43826a.k(activity);
            } else {
                contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "xiaomi", false, 2, (Object) null);
                if (contains$default2) {
                    l10 = f43826a.v(activity);
                } else {
                    contains$default3 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "oppo", false, 2, (Object) null);
                    if (contains$default3) {
                        l10 = f43826a.m(activity);
                    } else {
                        contains$default4 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "vivo", false, 2, (Object) null);
                        if (contains$default4) {
                            l10 = f43826a.u(activity);
                        } else {
                            contains$default5 = StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "meizu", false, 2, (Object) null);
                            l10 = contains$default5 ? f43826a.l(activity) : f43826a.h(activity);
                        }
                    }
                }
            }
            activityResultLauncher.launch(l10);
        } catch (Exception unused) {
            activityResultLauncher.launch(h(activity));
        }
    }

    private final Intent u(Context context) {
        Intent intent = new Intent();
        intent.putExtra("packagename", context.getPackageName());
        intent.setClassName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity");
        if (j(context, intent)) {
            return intent;
        }
        intent.setClassName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity");
        return j(context, intent) ? intent : h(context);
    }

    private final Intent v(Context context) {
        Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent.putExtra("extra_pkgname", context.getPackageName());
        if (j(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
        if (j(context, intent)) {
            return intent;
        }
        intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        return j(context, intent) ? intent : h(context);
    }

    public final boolean e(@m8.g Context context, @m8.g String permission) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(permission, "permission");
        return ContextCompat.checkSelfPermission(context, permission) == 0;
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

    public final boolean g(@m8.g Context context, @m8.g String[] permissions) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        for (String str : permissions) {
            if (!f43826a.e(context, str)) {
                return false;
            }
        }
        return true;
    }

    public final void n(@m8.g final Activity activity, @m8.g List<String> permissions, @m8.g final Function0<Unit> positiveListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(positiveListener, "positiveListener");
        new AlertDialog.Builder(activity).setCancelable(false).setMessage(activity.getString(b.s.f2296j7, new Object[]{i(permissions)})).setPositiveButton(b.s.X2, new DialogInterface.OnClickListener() { // from class: com.im.freechat.utils.o
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                r.o(activity, positiveListener, dialogInterface, i4);
            }
        }).setNegativeButton(b.s.I2, p.f43812a).show();
    }

    public final void q(@m8.g final Activity activity, @m8.g List<String> permissions, @m8.g final ActivityResultLauncher<Intent> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(activityResultLauncher, "activityResultLauncher");
        new AlertDialog.Builder(activity).setCancelable(false).setMessage(activity.getString(b.s.f2286i7, new Object[]{i(permissions)})).setPositiveButton(b.s.Y8, new DialogInterface.OnClickListener() { // from class: com.im.freechat.utils.n
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                r.r(activity, activityResultLauncher, dialogInterface, i4);
            }
        }).setNegativeButton(b.s.I2, q.f43825a).show();
    }
}
