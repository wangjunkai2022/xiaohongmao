package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class m3 {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.android.play.core.internal.h f31460d = new com.google.android.play.core.internal.h("PackMetadataManager");

    /* renamed from: a  reason: collision with root package name */
    private final p0 f31461a;

    /* renamed from: b  reason: collision with root package name */
    private final o3 f31462b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.play.core.common.c f31463c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m3(p0 p0Var, o3 o3Var, com.google.android.play.core.common.c cVar) {
        this.f31461a = p0Var;
        this.f31462b = o3Var;
        this.f31463c = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(String str) {
        if (this.f31463c.a("assetOnlyUpdates") && this.f31461a.g(str)) {
            int a10 = this.f31462b.a();
            p0 p0Var = this.f31461a;
            File B = p0Var.B(str, a10, p0Var.t(str));
            try {
                if (!B.exists()) {
                    return String.valueOf(a10);
                }
                FileInputStream a11 = h.b.a(new FileInputStream(B), B);
                Properties properties = new Properties();
                properties.load(a11);
                a11.close();
                String property = properties.getProperty("moduleVersionTag");
                return property == null ? String.valueOf(a10) : property;
            } catch (IOException unused) {
                f31460d.b("Failed to read pack version tag for pack %s", str);
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(String str, int i4, long j4, @Nullable String str2) throws IOException {
        if (str2 == null || str2.isEmpty()) {
            str2 = String.valueOf(i4);
        }
        Properties properties = new Properties();
        properties.put("moduleVersionTag", str2);
        File B = this.f31461a.B(str, i4, j4);
        B.getParentFile().mkdirs();
        B.createNewFile();
        FileOutputStream a10 = l.b.a(new FileOutputStream(B), B);
        try {
            properties.store(a10, (String) null);
            a10.close();
        } catch (Throwable th) {
            try {
                a10.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }
}
