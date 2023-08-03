package com.google.android.gms.internal.mlkit_language_id_common;

import com.ksyun.media.player.KSYMediaMeta;
import java.io.Serializable;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public abstract class zzw implements Map, Serializable {
    @r7.a

    /* renamed from: a  reason: collision with root package name */
    private transient zzx f31070a;
    @r7.a

    /* renamed from: b  reason: collision with root package name */
    private transient zzx f31071b;
    @r7.a

    /* renamed from: c  reason: collision with root package name */
    private transient zzq f31072c;

    public static zzw zzc(Object obj, Object obj2) {
        za.a("optional-module-barcode", com.google.mlkit.common.sdkinternal.o.f35889e);
        return e.d(1, new Object[]{"optional-module-barcode", com.google.mlkit.common.sdkinternal.o.f35889e}, null);
    }

    abstract zzq a();

    abstract zzx b();

    abstract zzx c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(@r7.a Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(@r7.a Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(@r7.a Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    @r7.a
    public abstract Object get(@r7.a Object obj);

    @Override // java.util.Map
    @r7.a
    public final Object getOrDefault(@r7.a Object obj, @r7.a Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return f.a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ Set keySet() {
        zzx zzxVar = this.f31071b;
        if (zzxVar == null) {
            zzx c10 = c();
            this.f31071b = c10;
            return c10;
        }
        return zzxVar;
    }

    @Override // java.util.Map
    @r7.a
    @Deprecated
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @r7.a
    @Deprecated
    public final Object remove(@r7.a Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        if (size >= 0) {
            StringBuilder sb = new StringBuilder((int) Math.min(size * 8, (long) KSYMediaMeta.AV_CH_STEREO_RIGHT));
            sb.append('{');
            boolean z9 = true;
            for (Map.Entry entry : entrySet()) {
                if (!z9) {
                    sb.append(", ");
                }
                sb.append(entry.getKey());
                sb.append('=');
                sb.append(entry.getValue());
                z9 = false;
            }
            sb.append('}');
            return sb.toString();
        }
        throw new IllegalArgumentException("size cannot be negative but was: " + size);
    }

    @Override // java.util.Map
    /* renamed from: zzb */
    public final zzq values() {
        zzq zzqVar = this.f31072c;
        if (zzqVar == null) {
            zzq a10 = a();
            this.f31072c = a10;
            return a10;
        }
        return zzqVar;
    }

    @Override // java.util.Map
    /* renamed from: zzf */
    public final zzx entrySet() {
        zzx zzxVar = this.f31070a;
        if (zzxVar == null) {
            zzx b10 = b();
            this.f31070a = b10;
            return b10;
        }
        return zzxVar;
    }
}
