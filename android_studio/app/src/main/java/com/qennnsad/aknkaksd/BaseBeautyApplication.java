package com.qennnsad.aknkaksd;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.didi.live.spring.R;
import com.facebook.common.memory.MemoryTrimType;
import com.im.freechat.sdk.SDKManager;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.util.o0;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.h;

/* compiled from: BaseBeautyApplication.kt */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\b'\u0018\u0000 62\u00020\u00012\u00020\u0002:\u00017B\u0007¢\u0006\u0004\b4\u00105J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0011\u001a\u00020\u0003H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\"\u0010\u001c\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R*\u0010#\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\f8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001d\u001a\u0004\b$\u0010\u001f\"\u0004\b%\u0010!R\"\u0010'\u001a\u00020&8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010.\u001a\u00020-8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00068"}, d2 = {"Lcom/qennnsad/aknkaksd/BaseBeautyApplication;", "Landroid/app/Application;", "Landroidx/lifecycle/LifecycleEventObserver;", "", "onAppBackgrounded", "onAppForegrounded", "Landroidx/lifecycle/LifecycleOwner;", v.b.f83881a, "Landroidx/lifecycle/Lifecycle$Event;", "event", "onStateChanged", "onCreate", "", "level", "onTrimMemory", "Landroid/content/res/Resources;", "getResources", "clearXMagicCache", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "", "TAG$1", "Ljava/lang/String;", "TAG", "", "isBackgrounded", "Z", "ptid", "I", "getPtid", "()I", "setPtid", "(I)V", "value", "money", "getMoney", "setMoney", "Lx4/a;", "analytics", "Lx4/a;", "getAnalytics", "()Lx4/a;", "setAnalytics", "(Lx4/a;)V", "Lg5/a;", "localDataManager", "Lg5/a;", "getLocalDataManager", "()Lg5/a;", "setLocalDataManager", "(Lg5/a;)V", "<init>", "()V", "Companion", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@SuppressLint({"Registered"})
/* loaded from: classes3.dex */
public abstract class BaseBeautyApplication extends Application implements LifecycleEventObserver {
    @m8.g
    public static final String TAG = "BaseBeautyApplication";
    private static Context appContext;
    private static BaseBeautyApplication instance;
    @h
    @JvmField
    public static Integer pendingVideoRotation;
    @m8.g
    private final String TAG$1 = TAG;
    @u7.a
    public x4.a analytics;
    private boolean isBackgrounded;
    @u7.a
    public g5.a localDataManager;
    private int money;
    private int ptid;
    @m8.g
    public static final a Companion = new a(null);
    @JvmField
    public static boolean gameCenterPointsRefreshPending = true;

    /* compiled from: BaseBeautyApplication.kt */
    @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\b\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\u0005\u001a\u00020\u0004H\u0007R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0016\u0010\t\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/BaseBeautyApplication$a;", "", "Lcom/qennnsad/aknkaksd/BaseBeautyApplication;", "b", "Landroid/content/Context;", "a", "", "TAG", "Ljava/lang/String;", "appContext", "Landroid/content/Context;", "", "gameCenterPointsRefreshPending", "Z", "instance", "Lcom/qennnsad/aknkaksd/BaseBeautyApplication;", "", "pendingVideoRotation", "Ljava/lang/Integer;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final Context a() {
            Context context = BaseBeautyApplication.appContext;
            if (context == null) {
                Intrinsics.throwUninitializedPropertyAccessException("appContext");
                return null;
            }
            return context;
        }

        @JvmStatic
        @m8.g
        public final BaseBeautyApplication b() {
            BaseBeautyApplication baseBeautyApplication = BaseBeautyApplication.instance;
            if (baseBeautyApplication == null) {
                Intrinsics.throwUninitializedPropertyAccessException("instance");
                return null;
            }
            return baseBeautyApplication;
        }
    }

    /* compiled from: BaseBeautyApplication.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseBeautyApplication.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<String, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f47675a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            com.qennnsad.aknkaksd.util.toast.a.n(it, false, 2, null);
        }
    }

    @JvmStatic
    @m8.g
    public static final Context getContextInstance() {
        return Companion.a();
    }

    @JvmStatic
    @m8.g
    public static final BaseBeautyApplication getInstance() {
        return Companion.b();
    }

    private final void onAppBackgrounded() {
        o0.a(this.TAG$1, "App goes Background");
        this.isBackgrounded = true;
        SDKManager.f41970a.q().h();
        getAnalytics().d(EventSignature.APP_CLOSED, new String[0]);
    }

    private final void onAppForegrounded() {
        o0.a(this.TAG$1, "App goes Foreground");
        this.isBackgrounded = false;
        com.im.freechat.sdk.e q9 = SDKManager.f41970a.q();
        ConfigBean e4 = getLocalDataManager().e();
        q9.g(!(e4 != null ? Intrinsics.areEqual(e4.getImWssReconnection(), Boolean.FALSE) : false), c.f47675a);
        getAnalytics().d(EventSignature.APP_OPEN, new String[0]);
    }

    public abstract void clearXMagicCache();

    @m8.g
    public final x4.a getAnalytics() {
        x4.a aVar = this.analytics;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("analytics");
        return null;
    }

    @m8.g
    public final g5.a getLocalDataManager() {
        g5.a aVar = this.localDataManager;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    public final int getMoney() {
        return this.money;
    }

    public final int getPtid() {
        return this.ptid;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    @h
    public Resources getResources() {
        Resources resources = super.getResources();
        Configuration configuration = new Configuration();
        configuration.setToDefaults();
        if (resources != null) {
            resources.updateConfiguration(configuration, resources.getDisplayMetrics());
        }
        return resources;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(@m8.g Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        if (!(newConfig.fontScale == 1.0f)) {
            getResources();
        }
        super.onConfigurationChanged(newConfig);
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        getApplicationContext().getTheme().applyStyle(R.style.AppTheme, true);
        instance = this;
        appContext = this;
        ProcessLifecycleOwner.get().getLifecycle().addObserver(this);
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@m8.g LifecycleOwner source, @m8.g Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        int i4 = b.$EnumSwitchMapping$0[event.ordinal()];
        if (i4 == 1) {
            onAppBackgrounded();
        } else if (i4 != 2) {
        } else {
            onAppForegrounded();
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i4) {
        super.onTrimMemory(i4);
        if (i4 == 5 || i4 == 10 || i4 == 15) {
            com.qennnsad.aknkaksd.initializers.a.f50838a.a().c(MemoryTrimType.OnCloseToDalvikHeapLimit);
            o0.a("TrimMemory: OnCloseToDalvikHeapLimit - level =", String.valueOf(i4));
        } else if (i4 == 20) {
            com.qennnsad.aknkaksd.initializers.a.f50838a.a().c(MemoryTrimType.OnAppBackgrounded);
            o0.a("TrimMemory: OnAppBackgrounded - level =", String.valueOf(i4));
        } else if (i4 != 40 && i4 != 60 && i4 != 80) {
            o0.a("default - level = ", String.valueOf(i4));
        } else {
            com.qennnsad.aknkaksd.initializers.a.f50838a.a().c(MemoryTrimType.OnSystemLowMemoryWhileAppInForeground);
            o0.a("TrimMemory: OnSystemLowMemoryWhileAppInForeground - level =", String.valueOf(i4));
        }
    }

    public final void setAnalytics(@m8.g x4.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.analytics = aVar;
    }

    public final void setLocalDataManager(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.localDataManager = aVar;
    }

    public final void setMoney(int i4) {
        o0.g("Money to pay", "-------------------------------" + i4 + "----------------------");
        this.money = i4;
    }

    public final void setPtid(int i4) {
        this.ptid = i4;
    }
}
