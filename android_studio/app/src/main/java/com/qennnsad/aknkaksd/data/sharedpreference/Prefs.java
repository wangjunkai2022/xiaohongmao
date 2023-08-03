package com.qennnsad.aknkaksd.data.sharedpreference;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.d;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m6.b;
import m8.g;
import m8.h;
import u7.f;

/* compiled from: Prefs.kt */
@f
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u000e\u001a\u00020\u000fJ$\u0010\u0010\u001a\u0002H\u0011\"\u0004\b\u0000\u0010\u00112\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u0002H\u0011H\u0086\u0002¢\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007J\u000e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007J&\u0010 \u001a\u00020\u000f\"\u0004\b\u0000\u0010\u00112\u0006\u0010\u0012\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u0001H\u0011H\u0086\u0002¢\u0006\u0002\u0010\"R\u001b\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u0007\u0012\u0002\b\u00030\u00068F¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;", "", "appContext", "Landroid/content/Context;", "(Landroid/content/Context;)V", d.f25731r0, "", "", "getAll", "()Ljava/util/Map;", "getAppContext", "()Landroid/content/Context;", "sharedPreferences", "Landroid/content/SharedPreferences;", "clear", "", "get", ExifInterface.GPS_DIRECTION_TRUE, "key", "fallback", "(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;", "getBoolean", "", "getInt", "", "getLong", "", "getString", "registerListener", "prefsChangeListener", "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;", "remove", "set", "value", "(Ljava/lang/String;Ljava/lang/Object;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Prefs {
    @g
    private final Context appContext;
    @g
    private final SharedPreferences sharedPreferences;

    @u7.a
    public Prefs(@b @g Context appContext) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        this.appContext = appContext;
        SharedPreferences sharedPreferences = appContext.getSharedPreferences(PrefsHelperKt.PREFERENCE_FILE_NAME, 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "appContext.getSharedPref…ME, Context.MODE_PRIVATE)");
        this.sharedPreferences = sharedPreferences;
    }

    public final void clear() {
        this.sharedPreferences.edit().clear().apply();
    }

    public final <T> T get(@g String key, T t9) throws UnsupportedOperationException {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences sharedPreferences = this.sharedPreferences;
        if (t9 instanceof Boolean) {
            return (T) Boolean.valueOf(sharedPreferences.getBoolean(key, ((Boolean) t9).booleanValue()));
        }
        if (t9 instanceof String) {
            return (T) sharedPreferences.getString(key, (String) t9);
        }
        if (t9 instanceof Integer) {
            return (T) Integer.valueOf(sharedPreferences.getInt(key, ((Integer) t9).intValue()));
        }
        if (t9 instanceof Float) {
            return (T) Float.valueOf(sharedPreferences.getFloat(key, ((Float) t9).floatValue()));
        }
        if (t9 instanceof Long) {
            return (T) Long.valueOf(sharedPreferences.getLong(key, ((Long) t9).longValue()));
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Type not supported: ");
        Intrinsics.checkNotNull(t9, "null cannot be cast to non-null type java.lang.Object");
        sb.append(t9.getClass().getSimpleName());
        throw new UnsupportedOperationException(sb.toString());
    }

    @g
    public final Map<String, ?> getAll() {
        Map<String, ?> all = this.sharedPreferences.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "sharedPreferences.all");
        return all;
    }

    @g
    public final Context getAppContext() {
        return this.appContext;
    }

    public final boolean getBoolean(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((Boolean) get(key, Boolean.FALSE)).booleanValue();
    }

    public final int getInt(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((Number) get(key, 0)).intValue();
    }

    public final long getLong(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return ((Number) get(key, 0L)).longValue();
    }

    @g
    public final String getString(@g String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return (String) get(key, "");
    }

    public final void registerListener(@g SharedPreferences.OnSharedPreferenceChangeListener prefsChangeListener) {
        Intrinsics.checkNotNullParameter(prefsChangeListener, "prefsChangeListener");
        this.sharedPreferences.registerOnSharedPreferenceChangeListener(prefsChangeListener);
    }

    public final void remove(@h String str) {
        this.sharedPreferences.edit().remove(str).apply();
    }

    public final <T> void set(@g String key, @h T t9) {
        Intrinsics.checkNotNullParameter(key, "key");
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        if (t9 instanceof Boolean) {
            edit.putBoolean(key, ((Boolean) t9).booleanValue());
        } else if (t9 instanceof String) {
            edit.putString(key, (String) t9);
        } else if (t9 instanceof Integer) {
            edit.putInt(key, ((Integer) t9).intValue());
        } else if (t9 instanceof Float) {
            edit.putFloat(key, ((Float) t9).floatValue());
        } else if (t9 instanceof Long) {
            edit.putLong(key, ((Long) t9).longValue());
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("Type not supported: ");
            Intrinsics.checkNotNull(t9, "null cannot be cast to non-null type java.lang.Object");
            sb.append(t9.getClass().getSimpleName());
            throw new UnsupportedOperationException(sb.toString());
        }
        edit.apply();
    }
}
