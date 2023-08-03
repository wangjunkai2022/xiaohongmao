package com.qennnsad.aknkaksd.util;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.AppUpdateBean;
import io.sentry.clientreport.e;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsKt;
import timber.log.Timber;

/* compiled from: UpdateUtil.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010(\u001a\u00020%\u0012\u0006\u0010/\u001a\u00020.\u0012\u0006\u0010+\u001a\u00020)¢\u0006\u0004\b0\u00101J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0002J\u0018\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0002H\u0002J\u0018\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0002J\b\u0010\u0019\u001a\u0004\u0018\u00010\u0002JL\u0010\"\u001a\u00020\r26\u0010\u001f\u001a2\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u001c\u0012\b\b\u0003\u0012\u0004\b\b(\u001d\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u001c\u0012\b\b\u0003\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\r0\u001a2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0 J\u001c\u0010$\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00122\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\r0 R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010+\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010*R\u0018\u0010-\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010,¨\u00062"}, d2 = {"Lcom/qennnsad/aknkaksd/util/m1;", "", "", "name", "Ljava/io/File;", "d", "g", "url", "f", "", "downloadId", "", "j", "", "e", "currentVersion", "newVersion", ContextChain.TAG_INFRA, "Landroid/app/Activity;", "activity", "packageName", "m", "Landroid/content/pm/PackageManager;", "packageManager", "k", "h", "Lkotlin/Function2;", "Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;", "Lkotlin/ParameterName;", "bean", "isForceUpdate", "onUpdateAllowed", "Lkotlin/Function0;", "onUpdateIgnored", "c", "onDismiss", "l", "Landroid/content/Context;", "a", "Landroid/content/Context;", "appContext", "Landroid/app/DownloadManager;", "Landroid/app/DownloadManager;", "downloadManager", "Ljava/lang/String;", "path", "Lg5/a;", "localDataManager", "<init>", "(Landroid/content/Context;Lg5/a;Landroid/app/DownloadManager;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f54856a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f54857b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final DownloadManager f54858c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private String f54859d;

    /* compiled from: UpdateUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<Boolean, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Activity f54861b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f54862c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Activity activity, String str) {
            super(1);
            this.f54861b = activity;
            this.f54862c = str;
        }

        public final void a(boolean z9) {
            if (z9) {
                m1.this.m(this.f54861b, this.f54862c);
            } else {
                m1.this.f54857b.P();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
            a(bool.booleanValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UpdateUtil.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f54863a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Function0<Unit> function0) {
            super(0);
            this.f54863a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f54863a.invoke();
        }
    }

    @u7.a
    public m1(@m8.g Context appContext, @m8.g g5.a localDataManager, @m8.g DownloadManager downloadManager) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(downloadManager, "downloadManager");
        this.f54856a = appContext;
        this.f54857b = localDataManager;
        this.f54858c = downloadManager;
    }

    private final File d(String str) {
        File externalFilesDir = this.f54856a.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        return new File(externalFilesDir, "update/" + str);
    }

    private final void e() {
        Timber.f93860a.a("Clear downloads...", new Object[0]);
        Cursor query = this.f54858c.query(new DownloadManager.Query());
        if (query.moveToFirst()) {
            do {
                int columnIndex = query.getColumnIndex("_id");
                if (columnIndex >= 0) {
                    this.f54858c.remove(query.getLong(columnIndex));
                }
            } while (query.moveToNext());
            this.f54859d = null;
            this.f54857b.W(-1L);
        }
        this.f54859d = null;
        this.f54857b.W(-1L);
    }

    private final String f(String str, String str2) {
        if (g(str2) != null) {
            return this.f54859d;
        }
        Timber.b bVar = Timber.f93860a;
        bVar.a("Downloading APK: " + str, new Object[0]);
        DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
        Context context = this.f54856a;
        String str3 = Environment.DIRECTORY_DOWNLOADS;
        request.setDestinationInExternalFilesDir(context, str3, "update/" + str2);
        request.setTitle(str2);
        request.setNotificationVisibility(0);
        this.f54857b.W(this.f54858c.enqueue(request));
        return null;
    }

    private final String g(String str) {
        File d4 = d(str);
        if (!d4.exists() || d4.length() <= 0) {
            return null;
        }
        this.f54859d = d4.getAbsolutePath();
        Timber.f93860a.a("APK Already exists!", new Object[0]);
        return this.f54859d;
    }

    private final boolean i(String str, String str2) {
        char c10;
        CharSequence trim;
        Integer intOrNull;
        CharSequence trim2;
        Integer intOrNull2;
        Timber.b bVar = Timber.f93860a;
        bVar.a("Comparing the versions " + str + " vs " + str2 + "...", new Object[0]);
        Object[] array = new Regex("\\.").split(str, 0).toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr = (String[]) array;
        Object[] array2 = new Regex("\\.").split(str2, 0).toArray(new String[0]);
        Intrinsics.checkNotNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        String[] strArr2 = (String[]) array2;
        int min = Math.min(strArr.length, strArr2.length);
        int i4 = 0;
        while (true) {
            if (i4 >= min) {
                c10 = 0;
                break;
            }
            trim = StringsKt__StringsKt.trim((CharSequence) strArr[i4]);
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(trim.toString());
            int intValue = intOrNull != null ? intOrNull.intValue() : 0;
            trim2 = StringsKt__StringsKt.trim((CharSequence) strArr2[i4]);
            intOrNull2 = StringsKt__StringNumberConversionsKt.toIntOrNull(trim2.toString());
            int intValue2 = intOrNull2 != null ? intOrNull2.intValue() : 0;
            if (intValue < intValue2) {
                c10 = 65535;
                break;
            } else if (intValue > intValue2) {
                c10 = 1;
                break;
            } else {
                i4++;
            }
        }
        if (c10 == 0 && strArr.length != strArr2.length) {
            c10 = strArr.length > strArr2.length ? (char) 1 : (char) 65535;
        }
        return c10 < 0;
    }

    private final boolean j(long j4) {
        Cursor query = this.f54858c.query(new DownloadManager.Query().setFilterById(j4));
        if (query.moveToFirst()) {
            int i4 = query.getInt(query.getColumnIndexOrThrow("status"));
            if (i4 == 8) {
                Timber.b bVar = Timber.f93860a;
                bVar.a("Download completed for [" + j4 + ']', new Object[0]);
                return true;
            }
            int i10 = query.getInt(query.getColumnIndexOrThrow(e.b.f83079a));
            Timber.b bVar2 = Timber.f93860a;
            bVar2.a("Download not ready, status [" + i4 + "] reason [" + i10 + ']', new Object[0]);
            return false;
        }
        return false;
    }

    private final boolean k(String str, PackageManager packageManager) {
        try {
            return packageManager.getApplicationInfo(str, 0).enabled;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(Activity activity, String str) {
        Intent intent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        intent.addFlags(268435456);
        activity.startActivity(intent);
    }

    public final void c(@m8.g Function2<? super AppUpdateBean, ? super Boolean, Unit> onUpdateAllowed, @m8.g Function0<Unit> onUpdateIgnored) {
        Unit unit;
        Intrinsics.checkNotNullParameter(onUpdateAllowed, "onUpdateAllowed");
        Intrinsics.checkNotNullParameter(onUpdateIgnored, "onUpdateIgnored");
        AppUpdateBean c10 = this.f54857b.c();
        if (c10 == null) {
            onUpdateIgnored.invoke();
            return;
        }
        String currVersion = x0.d(BaseBeautyApplication.Companion.a());
        Intrinsics.checkNotNullExpressionValue(currVersion, "currVersion");
        boolean i4 = i(currVersion, c10.getApkVersion());
        boolean i10 = i(currVersion, c10.getApkRequired());
        Timber.b bVar = Timber.f93860a;
        bVar.k("Curr Ver: " + currVersion, new Object[0]);
        bVar.k("New Optional Ver: " + c10.getApkVersion() + ". Is update required: " + i4, new Object[0]);
        bVar.k("New Required Ver: " + c10.getApkRequired() + ". Is force update required: " + i10, new Object[0]);
        if (i4) {
            String apkAddress = c10.getApkAddress();
            if (f(apkAddress, "apk" + c10.getApkVersion()) != null) {
                if (j(this.f54857b.d())) {
                    onUpdateAllowed.invoke(c10, Boolean.valueOf(i10));
                } else {
                    onUpdateIgnored.invoke();
                }
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                onUpdateIgnored.invoke();
                return;
            }
            return;
        }
        onUpdateIgnored.invoke();
        Unit unit2 = Unit.INSTANCE;
        e();
    }

    @m8.h
    public final String h() {
        return this.f54859d;
    }

    public final void l(@m8.g Activity activity, @m8.g Function0<Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        PackageManager packageManager = activity.getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "activity.packageManager");
        if (k("com.dada.live.superstar", packageManager) && !this.f54857b.p()) {
            l.O(activity, activity.getString(R.string.dialog_title_prompt), activity.getString(R.string.update_delete_old_app_message), activity.getString(R.string.update_delete_old_app_yes), activity.getString(R.string.update_delete_old_app_no), new a(activity, "com.dada.live.superstar"), new b(onDismiss));
        } else {
            onDismiss.invoke();
        }
    }
}
