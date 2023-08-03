package f5;

import android.app.DownloadManager;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AppUpdateModule.kt */
@dagger.hilt.e({p6.a.class})
@d6.h
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\u0004\u001a\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0002H\u0007J\u0012\u0010\u0006\u001a\u00020\u00052\b\b\u0001\u0010\u0003\u001a\u00020\u0002H\u0007¨\u0006\t"}, d2 = {"Lf5/a;", "", "Landroid/content/Context;", "context", "a", "Landroid/app/DownloadManager;", "b", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @u7.f
    @d6.i
    @m8.g
    public final Context a(@m6.b @m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        return applicationContext;
    }

    @u7.f
    @d6.i
    @m8.g
    public final DownloadManager b(@m6.b @m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("download");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
        return (DownloadManager) systemService;
    }
}
