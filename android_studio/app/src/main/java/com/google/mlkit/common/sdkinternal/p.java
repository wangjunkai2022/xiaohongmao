package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import io.sentry.protocol.a;
import java.util.UUID;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public class p {
    @NonNull
    @u2.a
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    public static final String f35900b = "com.google.mlkit.internal";
    @NonNull
    @u2.a

    /* renamed from: c  reason: collision with root package name */
    public static final com.google.firebase.components.f<?> f35901c = com.google.firebase.components.f.a(p.class).b(com.google.firebase.components.t.j(k.class)).b(com.google.firebase.components.t.j(Context.class)).f(f0.f35794a).d();

    /* renamed from: a  reason: collision with root package name */
    private final Context f35902a;

    public p(@NonNull Context context) {
        this.f35902a = context;
    }

    @NonNull
    @u2.a
    public static p g(@NonNull k kVar) {
        return (p) kVar.a(p.class);
    }

    private final SharedPreferences s() {
        return this.f35902a.getSharedPreferences(f35900b, 0);
    }

    @u2.a
    public synchronized void a(@NonNull com.google.mlkit.common.model.d dVar) {
        s().edit().remove(String.format("downloading_model_id_%s", dVar.f())).remove(String.format("downloading_model_hash_%s", dVar.f())).remove(String.format("downloading_model_type_%s", d(dVar))).remove(String.format("downloading_begin_time_%s", dVar.f())).remove(String.format("model_first_use_time_%s", dVar.f())).apply();
    }

    @u2.a
    public synchronized void b(@NonNull com.google.mlkit.common.model.d dVar) {
        s().edit().remove(String.format("bad_hash_%s", dVar.f())).remove(a.b.f83631f).apply();
    }

    @u2.a
    @WorkerThread
    public synchronized void c(@NonNull com.google.mlkit.common.model.d dVar) {
        s().edit().remove(String.format("current_model_hash_%s", dVar.f())).commit();
    }

    @Nullable
    @u2.a
    public synchronized String d(@NonNull com.google.mlkit.common.model.d dVar) {
        return s().getString(String.format("downloading_model_hash_%s", dVar.f()), null);
    }

    @Nullable
    @u2.a
    public synchronized Long e(@NonNull com.google.mlkit.common.model.d dVar) {
        long j4 = s().getLong(String.format("downloading_model_id_%s", dVar.f()), -1L);
        if (j4 < 0) {
            return null;
        }
        return Long.valueOf(j4);
    }

    @Nullable
    @u2.a
    public synchronized String f(@NonNull com.google.mlkit.common.model.d dVar) {
        return s().getString(String.format("bad_hash_%s", dVar.f()), null);
    }

    @Nullable
    @u2.a
    public synchronized String h(@NonNull com.google.mlkit.common.model.d dVar) {
        return s().getString(String.format("current_model_hash_%s", dVar.f()), null);
    }

    @NonNull
    @u2.a
    public synchronized String i() {
        String string = s().getString("ml_sdk_instance_id", null);
        if (string != null) {
            return string;
        }
        String uuid = UUID.randomUUID().toString();
        s().edit().putString("ml_sdk_instance_id", uuid).apply();
        return uuid;
    }

    @u2.a
    public synchronized long j(@NonNull com.google.mlkit.common.model.d dVar) {
        return s().getLong(String.format("downloading_begin_time_%s", dVar.f()), 0L);
    }

    @u2.a
    public synchronized long k(@NonNull com.google.mlkit.common.model.d dVar) {
        return s().getLong(String.format("model_first_use_time_%s", dVar.f()), 0L);
    }

    @Nullable
    @u2.a
    public synchronized String l() {
        return s().getString(a.b.f83631f, null);
    }

    @u2.a
    public synchronized void m(long j4, @NonNull m mVar) {
        String b10 = mVar.b();
        s().edit().putString(String.format("downloading_model_hash_%s", b10), mVar.a()).putLong(String.format("downloading_model_id_%s", b10), j4).putLong(String.format("downloading_begin_time_%s", b10), SystemClock.elapsedRealtime()).apply();
    }

    @u2.a
    public synchronized void n(@NonNull com.google.mlkit.common.model.d dVar, @NonNull String str, @NonNull String str2) {
        s().edit().putString(String.format("bad_hash_%s", dVar.f()), str).putString(a.b.f83631f, str2).apply();
    }

    @u2.a
    public synchronized void o(@NonNull com.google.mlkit.common.model.d dVar, @NonNull String str) {
        s().edit().putString(String.format("current_model_hash_%s", dVar.f()), str).apply();
    }

    @u2.a
    public synchronized void p(@NonNull com.google.mlkit.common.model.d dVar, long j4) {
        s().edit().putLong(String.format("model_first_use_time_%s", dVar.f()), j4).apply();
    }

    @Nullable
    public final synchronized String q(@NonNull String str, long j4) {
        return s().getString(String.format("cached_local_model_hash_%1s_%2s", com.google.android.gms.common.internal.u.k(str), Long.valueOf(j4)), null);
    }

    public final synchronized void r(@NonNull String str, long j4, @NonNull String str2) {
        s().edit().putString(String.format("cached_local_model_hash_%1s_%2s", com.google.android.gms.common.internal.u.k(str), Long.valueOf(j4)), str2).apply();
    }
}
