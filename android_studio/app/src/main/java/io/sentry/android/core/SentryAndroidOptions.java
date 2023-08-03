package io.sentry.android.core;

import com.google.android.exoplayer2.k2;
import io.sentry.SentryOptions;
import m8.a;

/* loaded from: classes4.dex */
public final class SentryAndroidOptions extends SentryOptions {
    private boolean attachScreenshot;
    private boolean attachViewHierarchy;
    private boolean anrEnabled = true;
    private long anrTimeoutIntervalMillis = 5000;
    private boolean anrReportInDebug = false;
    private boolean enableActivityLifecycleBreadcrumbs = true;
    private boolean enableAppLifecycleBreadcrumbs = true;
    private boolean enableSystemEventBreadcrumbs = true;
    private boolean enableAppComponentBreadcrumbs = true;
    private boolean enableAutoActivityLifecycleTracing = true;
    private boolean enableActivityLifecycleTracingAutoFinish = true;
    private int profilingTracesHz = 101;
    @m8.g
    private v0 debugImagesLoader = c1.c();
    private boolean collectAdditionalContext = true;
    private long startupCrashFlushTimeoutMillis = 5000;
    private final long startupCrashDurationThresholdMillis = k2.f23783i1;
    private boolean enableFramesTracking = true;

    public SentryAndroidOptions() {
        setSentryClientName("sentry.java.android/6.13.0");
        setSdkVersion(createSdkVersion());
        setAttachServerName(false);
        setEnableScopeSync(true);
    }

    @m8.g
    private io.sentry.protocol.l createSdkVersion() {
        io.sentry.protocol.l k10 = io.sentry.protocol.l.k(getSdkVersion(), l0.f82511d, "6.13.0");
        k10.d("maven:io.sentry:sentry-android-core", "6.13.0");
        return k10;
    }

    public void enableAllAutoBreadcrumbs(boolean z9) {
        this.enableActivityLifecycleBreadcrumbs = z9;
        this.enableAppComponentBreadcrumbs = z9;
        this.enableSystemEventBreadcrumbs = z9;
        this.enableAppLifecycleBreadcrumbs = z9;
        setEnableUserInteractionBreadcrumbs(z9);
    }

    public long getAnrTimeoutIntervalMillis() {
        return this.anrTimeoutIntervalMillis;
    }

    @m8.g
    public v0 getDebugImagesLoader() {
        return this.debugImagesLoader;
    }

    @a.c
    public int getProfilingTracesHz() {
        return this.profilingTracesHz;
    }

    @Deprecated
    public int getProfilingTracesIntervalMillis() {
        return 0;
    }

    @a.c
    public long getStartupCrashDurationThresholdMillis() {
        return k2.f23783i1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @a.c
    public long getStartupCrashFlushTimeoutMillis() {
        return this.startupCrashFlushTimeoutMillis;
    }

    public boolean isAnrEnabled() {
        return this.anrEnabled;
    }

    public boolean isAnrReportInDebug() {
        return this.anrReportInDebug;
    }

    public boolean isAttachScreenshot() {
        return this.attachScreenshot;
    }

    public boolean isAttachViewHierarchy() {
        return this.attachViewHierarchy;
    }

    public boolean isCollectAdditionalContext() {
        return this.collectAdditionalContext;
    }

    public boolean isEnableActivityLifecycleBreadcrumbs() {
        return this.enableActivityLifecycleBreadcrumbs;
    }

    public boolean isEnableActivityLifecycleTracingAutoFinish() {
        return this.enableActivityLifecycleTracingAutoFinish;
    }

    public boolean isEnableAppComponentBreadcrumbs() {
        return this.enableAppComponentBreadcrumbs;
    }

    public boolean isEnableAppLifecycleBreadcrumbs() {
        return this.enableAppLifecycleBreadcrumbs;
    }

    public boolean isEnableAutoActivityLifecycleTracing() {
        return this.enableAutoActivityLifecycleTracing;
    }

    public boolean isEnableFramesTracking() {
        return this.enableFramesTracking;
    }

    public boolean isEnableSystemEventBreadcrumbs() {
        return this.enableSystemEventBreadcrumbs;
    }

    public void setAnrEnabled(boolean z9) {
        this.anrEnabled = z9;
    }

    public void setAnrReportInDebug(boolean z9) {
        this.anrReportInDebug = z9;
    }

    public void setAnrTimeoutIntervalMillis(long j4) {
        this.anrTimeoutIntervalMillis = j4;
    }

    public void setAttachScreenshot(boolean z9) {
        this.attachScreenshot = z9;
    }

    public void setAttachViewHierarchy(boolean z9) {
        this.attachViewHierarchy = z9;
    }

    public void setCollectAdditionalContext(boolean z9) {
        this.collectAdditionalContext = z9;
    }

    public void setDebugImagesLoader(@m8.g v0 v0Var) {
        if (v0Var == null) {
            v0Var = c1.c();
        }
        this.debugImagesLoader = v0Var;
    }

    public void setEnableActivityLifecycleBreadcrumbs(boolean z9) {
        this.enableActivityLifecycleBreadcrumbs = z9;
    }

    public void setEnableActivityLifecycleTracingAutoFinish(boolean z9) {
        this.enableActivityLifecycleTracingAutoFinish = z9;
    }

    public void setEnableAppComponentBreadcrumbs(boolean z9) {
        this.enableAppComponentBreadcrumbs = z9;
    }

    public void setEnableAppLifecycleBreadcrumbs(boolean z9) {
        this.enableAppLifecycleBreadcrumbs = z9;
    }

    public void setEnableAutoActivityLifecycleTracing(boolean z9) {
        this.enableAutoActivityLifecycleTracing = z9;
    }

    public void setEnableFramesTracking(boolean z9) {
        this.enableFramesTracking = z9;
    }

    public void setEnableSystemEventBreadcrumbs(boolean z9) {
        this.enableSystemEventBreadcrumbs = z9;
    }

    @a.c
    public void setProfilingTracesHz(int i4) {
        this.profilingTracesHz = i4;
    }

    @Deprecated
    public void setProfilingTracesIntervalMillis(int i4) {
    }

    @m8.k
    void setStartupCrashFlushTimeoutMillis(long j4) {
        this.startupCrashFlushTimeoutMillis = j4;
    }
}
