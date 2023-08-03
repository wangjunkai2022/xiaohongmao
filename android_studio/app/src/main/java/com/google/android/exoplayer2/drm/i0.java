package com.google.android.exoplayer2.drm;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.drm.b0;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableMap;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* compiled from: HttpMediaDrmCallback.java */
/* loaded from: classes2.dex */
public final class i0 implements k0 {

    /* renamed from: e  reason: collision with root package name */
    private static final int f21780e = 5;

    /* renamed from: a  reason: collision with root package name */
    private final HttpDataSource.b f21781a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f21782b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f21783c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, String> f21784d;

    public i0(@Nullable String str, HttpDataSource.b bVar) {
        this(str, false, bVar);
    }

    private static byte[] e(HttpDataSource.b bVar, String str, @Nullable byte[] bArr, Map<String, String> map) throws MediaDrmCallbackException {
        com.google.android.exoplayer2.upstream.m0 m0Var = new com.google.android.exoplayer2.upstream.m0(bVar.a());
        com.google.android.exoplayer2.upstream.o a10 = new o.b().k(str).f(map).e(2).d(bArr).c(1).a();
        int i4 = 0;
        com.google.android.exoplayer2.upstream.o oVar = a10;
        while (true) {
            try {
                com.google.android.exoplayer2.upstream.n nVar = new com.google.android.exoplayer2.upstream.n(m0Var, oVar);
                try {
                    byte[] r12 = z0.r1(nVar);
                    z0.q(nVar);
                    return r12;
                } catch (HttpDataSource.InvalidResponseCodeException e4) {
                    String f10 = f(e4, i4);
                    if (f10 != null) {
                        i4++;
                        oVar = oVar.a().k(f10).a();
                        z0.q(nVar);
                    } else {
                        throw e4;
                    }
                }
            } catch (Exception e10) {
                throw new MediaDrmCallbackException(a10, (Uri) com.google.android.exoplayer2.util.a.g(m0Var.u()), m0Var.b(), m0Var.t(), e10);
            }
        }
    }

    @Nullable
    private static String f(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException, int i4) {
        Map<String, List<String>> map;
        List<String> list;
        int i10 = invalidResponseCodeException.responseCode;
        if (!((i10 == 307 || i10 == 308) && i4 < 5) || (map = invalidResponseCodeException.headerFields) == null || (list = map.get(com.google.common.net.b.f34636m0)) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    @Override // com.google.android.exoplayer2.drm.k0
    public byte[] a(UUID uuid, b0.h hVar) throws MediaDrmCallbackException {
        String b10 = hVar.b();
        String J = z0.J(hVar.a());
        StringBuilder sb = new StringBuilder(String.valueOf(b10).length() + 15 + String.valueOf(J).length());
        sb.append(b10);
        sb.append("&signedRequest=");
        sb.append(J);
        return e(this.f21781a, sb.toString(), null, Collections.emptyMap());
    }

    @Override // com.google.android.exoplayer2.drm.k0
    public byte[] b(UUID uuid, b0.b bVar) throws MediaDrmCallbackException {
        String str;
        String b10 = bVar.b();
        if (this.f21783c || TextUtils.isEmpty(b10)) {
            b10 = this.f21782b;
        }
        if (!TextUtils.isEmpty(b10)) {
            HashMap hashMap = new HashMap();
            UUID uuid2 = com.google.android.exoplayer2.i.M1;
            if (uuid2.equals(uuid)) {
                str = "text/xml";
            } else {
                str = com.google.android.exoplayer2.i.K1.equals(uuid) ? "application/json" : "application/octet-stream";
            }
            hashMap.put("Content-Type", str);
            if (uuid2.equals(uuid)) {
                hashMap.put("SOAPAction", "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense");
            }
            synchronized (this.f21784d) {
                hashMap.putAll(this.f21784d);
            }
            return e(this.f21781a, b10, bVar.a(), hashMap);
        }
        throw new MediaDrmCallbackException(new o.b().j(Uri.EMPTY).a(), Uri.EMPTY, ImmutableMap.of(), 0L, new IllegalStateException("No license URL"));
    }

    public void c() {
        synchronized (this.f21784d) {
            this.f21784d.clear();
        }
    }

    public void d(String str) {
        com.google.android.exoplayer2.util.a.g(str);
        synchronized (this.f21784d) {
            this.f21784d.remove(str);
        }
    }

    public void g(String str, String str2) {
        com.google.android.exoplayer2.util.a.g(str);
        com.google.android.exoplayer2.util.a.g(str2);
        synchronized (this.f21784d) {
            this.f21784d.put(str, str2);
        }
    }

    public i0(@Nullable String str, boolean z9, HttpDataSource.b bVar) {
        com.google.android.exoplayer2.util.a.a((z9 && TextUtils.isEmpty(str)) ? false : true);
        this.f21781a = bVar;
        this.f21782b = str;
        this.f21783c = z9;
        this.f21784d = new HashMap();
    }
}
