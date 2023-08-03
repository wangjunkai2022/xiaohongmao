package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: DefaultContentMetadata.java */
/* loaded from: classes2.dex */
public final class r implements p {

    /* renamed from: f  reason: collision with root package name */
    public static final r f27179f = new r(Collections.emptyMap());

    /* renamed from: d  reason: collision with root package name */
    private int f27180d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, byte[]> f27181e;

    public r() {
        this(Collections.emptyMap());
    }

    private static void e(HashMap<String, byte[]> hashMap, Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), i(entry.getValue()));
        }
    }

    private static Map<String, byte[]> f(Map<String, byte[]> map, q qVar) {
        HashMap hashMap = new HashMap(map);
        k(hashMap, qVar.c());
        e(hashMap, qVar.b());
        return hashMap;
    }

    private static byte[] i(Object obj) {
        if (obj instanceof Long) {
            return ByteBuffer.allocate(8).putLong(((Long) obj).longValue()).array();
        }
        if (obj instanceof String) {
            return ((String) obj).getBytes(com.google.common.base.e.f32190c);
        }
        if (obj instanceof byte[]) {
            return (byte[]) obj;
        }
        throw new IllegalArgumentException();
    }

    private static boolean j(Map<String, byte[]> map, Map<String, byte[]> map2) {
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            if (!Arrays.equals(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    private static void k(HashMap<String, byte[]> hashMap, List<String> list) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            hashMap.remove(list.get(i4));
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.p
    public final boolean a(String str) {
        return this.f27181e.containsKey(str);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.p
    public final long b(String str, long j4) {
        byte[] bArr = this.f27181e.get(str);
        return bArr != null ? ByteBuffer.wrap(bArr).getLong() : j4;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.p
    @Nullable
    public final byte[] c(String str, @Nullable byte[] bArr) {
        byte[] bArr2 = this.f27181e.get(str);
        return bArr2 != null ? Arrays.copyOf(bArr2, bArr2.length) : bArr;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.p
    @Nullable
    public final String d(String str, @Nullable String str2) {
        byte[] bArr = this.f27181e.get(str);
        return bArr != null ? new String(bArr, com.google.common.base.e.f32190c) : str2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        return j(this.f27181e, ((r) obj).f27181e);
    }

    public r g(q qVar) {
        Map<String, byte[]> f10 = f(this.f27181e, qVar);
        return j(this.f27181e, f10) ? this : new r(f10);
    }

    public Set<Map.Entry<String, byte[]>> h() {
        return this.f27181e.entrySet();
    }

    public int hashCode() {
        if (this.f27180d == 0) {
            int i4 = 0;
            for (Map.Entry<String, byte[]> entry : this.f27181e.entrySet()) {
                i4 += Arrays.hashCode(entry.getValue()) ^ entry.getKey().hashCode();
            }
            this.f27180d = i4;
        }
        return this.f27180d;
    }

    public r(Map<String, byte[]> map) {
        this.f27181e = Collections.unmodifiableMap(map);
    }
}
