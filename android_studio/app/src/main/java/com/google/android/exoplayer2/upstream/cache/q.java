package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ContentMetadataMutations.java */
/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f27177a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final List<String> f27178b = new ArrayList();

    private q a(String str, Object obj) {
        this.f27177a.put((String) com.google.android.exoplayer2.util.a.g(str), com.google.android.exoplayer2.util.a.g(obj));
        this.f27178b.remove(str);
        return this;
    }

    public static q h(q qVar, long j4) {
        return qVar.e(p.f27176c, j4);
    }

    public static q i(q qVar, @Nullable Uri uri) {
        if (uri == null) {
            return qVar.d(p.f27175b);
        }
        return qVar.f(p.f27175b, uri.toString());
    }

    public Map<String, Object> b() {
        HashMap hashMap = new HashMap(this.f27177a);
        for (Map.Entry entry : hashMap.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public List<String> c() {
        return Collections.unmodifiableList(new ArrayList(this.f27178b));
    }

    public q d(String str) {
        this.f27178b.add(str);
        this.f27177a.remove(str);
        return this;
    }

    public q e(String str, long j4) {
        return a(str, Long.valueOf(j4));
    }

    public q f(String str, String str2) {
        return a(str, str2);
    }

    public q g(String str, byte[] bArr) {
        return a(str, Arrays.copyOf(bArr, bArr.length));
    }
}
