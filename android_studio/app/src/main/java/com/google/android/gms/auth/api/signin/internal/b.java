package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.u;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import y2.d0;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    private static final Lock f28474c = new ReentrantLock();
    @Nullable
    @s7.a("sLk")

    /* renamed from: d  reason: collision with root package name */
    private static b f28475d;

    /* renamed from: a  reason: collision with root package name */
    private final Lock f28476a = new ReentrantLock();
    @s7.a("mLk")

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f28477b;

    @d0
    b(Context context) {
        this.f28477b = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    @NonNull
    @u2.a
    public static b b(@NonNull Context context) {
        u.k(context);
        Lock lock = f28474c;
        lock.lock();
        try {
            if (f28475d == null) {
                f28475d = new b(context.getApplicationContext());
            }
            b bVar = f28475d;
            lock.unlock();
            return bVar;
        } catch (Throwable th) {
            f28474c.unlock();
            throw th;
        }
    }

    private static final String k(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @u2.a
    public void a() {
        this.f28476a.lock();
        try {
            this.f28477b.edit().clear().apply();
        } finally {
            this.f28476a.unlock();
        }
    }

    @Nullable
    @u2.a
    public GoogleSignInAccount c() {
        String g4;
        String g10 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g10) || (g4 = g(k("googleSignInAccount", g10))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zab(g4);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @u2.a
    public GoogleSignInOptions d() {
        String g4;
        String g10 = g("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g10) || (g4 = g(k("googleSignInOptions", g10))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zab(g4);
        } catch (JSONException unused) {
            return null;
        }
    }

    @Nullable
    @u2.a
    public String e() {
        return g("refreshToken");
    }

    @u2.a
    public void f(@NonNull GoogleSignInAccount googleSignInAccount, @NonNull GoogleSignInOptions googleSignInOptions) {
        u.k(googleSignInAccount);
        u.k(googleSignInOptions);
        j("defaultGoogleSignInAccount", googleSignInAccount.zac());
        u.k(googleSignInAccount);
        u.k(googleSignInOptions);
        String zac = googleSignInAccount.zac();
        j(k("googleSignInAccount", zac), googleSignInAccount.zad());
        j(k("googleSignInOptions", zac), googleSignInOptions.zaf());
    }

    @Nullable
    protected final String g(@NonNull String str) {
        this.f28476a.lock();
        try {
            return this.f28477b.getString(str, null);
        } finally {
            this.f28476a.unlock();
        }
    }

    protected final void h(@NonNull String str) {
        this.f28476a.lock();
        try {
            this.f28477b.edit().remove(str).apply();
        } finally {
            this.f28476a.unlock();
        }
    }

    public final void i() {
        String g4 = g("defaultGoogleSignInAccount");
        h("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(g4)) {
            return;
        }
        h(k("googleSignInAccount", g4));
        h(k("googleSignInOptions", g4));
    }

    protected final void j(@NonNull String str, @NonNull String str2) {
        this.f28476a.lock();
        try {
            this.f28477b.edit().putString(str, str2).apply();
        } finally {
            this.f28476a.unlock();
        }
    }
}
