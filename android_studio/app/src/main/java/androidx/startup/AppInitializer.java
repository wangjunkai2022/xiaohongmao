package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.tracing.Trace;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class AppInitializer {
    private static final String SECTION_NAME = "Startup";
    private static volatile AppInitializer sInstance;
    private static final Object sLock = new Object();
    @NonNull
    final Context mContext;
    @NonNull
    final Set<Class<? extends Initializer<?>>> mDiscovered = new HashSet();
    @NonNull
    final Map<Class<?>, Object> mInitialized = new HashMap();

    AppInitializer(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
    }

    @NonNull
    public static AppInitializer getInstance(@NonNull Context context) {
        if (sInstance == null) {
            synchronized (sLock) {
                if (sInstance == null) {
                    sInstance = new AppInitializer(context);
                }
            }
        }
        return sInstance;
    }

    static void setDelegate(@NonNull AppInitializer appInitializer) {
        synchronized (sLock) {
            sInstance = appInitializer;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void discoverAndInitialize() {
        try {
            try {
                Trace.beginSection(SECTION_NAME);
                discoverAndInitialize(this.mContext.getPackageManager().getProviderInfo(new ComponentName(this.mContext.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
            } catch (PackageManager.NameNotFoundException e4) {
                throw new StartupException(e4);
            }
        } finally {
            Trace.endSection();
        }
    }

    @NonNull
    <T> T doInitialize(@NonNull Class<? extends Initializer<?>> cls) {
        T t9;
        synchronized (sLock) {
            t9 = (T) this.mInitialized.get(cls);
            if (t9 == null) {
                t9 = (T) doInitialize(cls, new HashSet());
            }
        }
        return t9;
    }

    @NonNull
    public <T> T initializeComponent(@NonNull Class<? extends Initializer<T>> cls) {
        return (T) doInitialize(cls);
    }

    public boolean isEagerlyInitialized(@NonNull Class<? extends Initializer<?>> cls) {
        return this.mDiscovered.contains(cls);
    }

    @NonNull
    private <T> T doInitialize(@NonNull Class<? extends Initializer<?>> cls, @NonNull Set<Class<?>> set) {
        T t9;
        if (Trace.isEnabled()) {
            try {
                Trace.beginSection(cls.getSimpleName());
            } finally {
                Trace.endSection();
            }
        }
        if (!set.contains(cls)) {
            if (!this.mInitialized.containsKey(cls)) {
                set.add(cls);
                Initializer<?> newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class<? extends Initializer<?>>> dependencies = newInstance.dependencies();
                if (!dependencies.isEmpty()) {
                    for (Class<? extends Initializer<?>> cls2 : dependencies) {
                        if (!this.mInitialized.containsKey(cls2)) {
                            doInitialize(cls2, set);
                        }
                    }
                }
                t9 = (T) newInstance.create(this.mContext);
                set.remove(cls);
                this.mInitialized.put(cls, t9);
            } else {
                t9 = (T) this.mInitialized.get(cls);
            }
            return t9;
        }
        throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    void discoverAndInitialize(@Nullable Bundle bundle) {
        String string = this.mContext.getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (Initializer.class.isAssignableFrom(cls)) {
                            this.mDiscovered.add(cls);
                        }
                    }
                }
                for (Class<? extends Initializer<?>> cls2 : this.mDiscovered) {
                    doInitialize(cls2, hashSet);
                }
            } catch (ClassNotFoundException e4) {
                throw new StartupException(e4);
            }
        }
    }
}
