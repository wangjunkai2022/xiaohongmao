package com.qennnsad.aknkaksd.initializers;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.startup.Initializer;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatDetailsActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import timber.log.Timber;

/* compiled from: IMInitializer.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001a\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\t0\bH\u0016¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/initializers/IMInitializer;", "Landroidx/startup/Initializer;", "", "()V", "create", "c", "Landroid/content/Context;", "dependencies", "", "Ljava/lang/Class;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class IMInitializer implements Initializer<Object> {

    /* compiled from: IMInitializer.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/content/Context;", "context", "", k4.b.f84734a, "Landroid/app/PendingIntent;", "kotlin.jvm.PlatformType", "a", "(Landroid/content/Context;I)Landroid/app/PendingIntent;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function2<Context, Integer, PendingIntent> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f50837a = new a();

        a() {
            super(2);
        }

        public final PendingIntent a(@g Context context, int i4) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intent intent = new Intent(context, MainContainerActivity.class);
            intent.addFlags(536870912);
            Intent intent2 = new Intent(context, ChatDetailsActivity.class);
            intent2.putExtra(k4.b.f84734a, i4);
            PendingIntent activities = PendingIntent.getActivities(context, 0, new Intent[]{intent, intent2}, Build.VERSION.SDK_INT >= 31 ? 67108864 : 134217728);
            Intrinsics.checkNotNullExpressionValue(activities, "getActivities(\n         …       flag\n            )");
            return activities;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ PendingIntent invoke(Context context, Integer num) {
            return a(context, num.intValue());
        }
    }

    @Override // androidx.startup.Initializer
    @g
    public Object create(@g Context c10) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Timber.f93860a.a("...", new Object[0]);
        SDKManager sDKManager = SDKManager.f41970a;
        sDKManager.t(c10, "19210464");
        sDKManager.z(a.f50837a);
        return new Object();
    }

    @Override // androidx.startup.Initializer
    @g
    public List<Class<? extends Initializer<?>>> dependencies() {
        List<Class<? extends Initializer<?>>> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(SentryInitializer.class);
        return mutableListOf;
    }
}
