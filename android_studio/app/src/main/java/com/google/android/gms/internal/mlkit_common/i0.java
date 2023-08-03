package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.c;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class i0 implements com.google.firebase.encoders.e {

    /* renamed from: f  reason: collision with root package name */
    private static final Charset f29697f = Charset.forName("UTF-8");

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29698g;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f29699h;

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.firebase.encoders.d f29700i;

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f29701a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f29702b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f29703c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.firebase.encoders.d f29704d;

    /* renamed from: e  reason: collision with root package name */
    private final m0 f29705e = new m0(this);

    static {
        c.b a10 = com.google.firebase.encoders.c.a("key");
        d0 d0Var = new d0();
        d0Var.a(1);
        f29698g = a10.b(d0Var.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("value");
        d0 d0Var2 = new d0();
        d0Var2.a(2);
        f29699h = a11.b(d0Var2.b()).a();
        f29700i = h0.f29668a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0(OutputStream outputStream, Map map, Map map2, com.google.firebase.encoders.d dVar) {
        this.f29701a = outputStream;
        this.f29702b = map;
        this.f29703c = map2;
        this.f29704d = dVar;
    }

    private static ByteBuffer A(int i4) {
        return ByteBuffer.allocate(i4).order(ByteOrder.LITTLE_ENDIAN);
    }

    private final void B(int i4) throws IOException {
        while (true) {
            int i10 = ((i4 & (-128)) > 0L ? 1 : ((i4 & (-128)) == 0L ? 0 : -1));
            OutputStream outputStream = this.f29701a;
            if (i10 == 0) {
                outputStream.write(i4 & 127);
                return;
            } else {
                outputStream.write((i4 & 127) | 128);
                i4 >>>= 7;
            }
        }
    }

    private final void C(long j4) throws IOException {
        while (true) {
            int i4 = (((-128) & j4) > 0L ? 1 : (((-128) & j4) == 0L ? 0 : -1));
            OutputStream outputStream = this.f29701a;
            if (i4 == 0) {
                outputStream.write(((int) j4) & 127);
                return;
            } else {
                outputStream.write((((int) j4) & 127) | 128);
                j4 >>>= 7;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void u(Map.Entry entry, com.google.firebase.encoders.e eVar) throws IOException {
        eVar.m(f29698g, entry.getKey());
        eVar.m(f29699h, entry.getValue());
    }

    private static int v(com.google.firebase.encoders.c cVar) {
        g0 g0Var = (g0) cVar.c(g0.class);
        if (g0Var != null) {
            return g0Var.zza();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private final long w(com.google.firebase.encoders.d dVar, Object obj) throws IOException {
        e0 e0Var = new e0();
        try {
            OutputStream outputStream = this.f29701a;
            this.f29701a = e0Var;
            dVar.a(obj, this);
            this.f29701a = outputStream;
            long a10 = e0Var.a();
            e0Var.close();
            return a10;
        } catch (Throwable th) {
            try {
                e0Var.close();
            } catch (Throwable th2) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                } catch (Exception unused) {
                }
            }
            throw th;
        }
    }

    private static g0 x(com.google.firebase.encoders.c cVar) {
        g0 g0Var = (g0) cVar.c(g0.class);
        if (g0Var != null) {
            return g0Var;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private final i0 y(com.google.firebase.encoders.d dVar, com.google.firebase.encoders.c cVar, Object obj, boolean z9) throws IOException {
        long w9 = w(dVar, obj);
        if (z9 && w9 == 0) {
            return this;
        }
        B((v(cVar) << 3) | 2);
        C(w9);
        dVar.a(obj, this);
        return this;
    }

    private final i0 z(com.google.firebase.encoders.f fVar, com.google.firebase.encoders.c cVar, Object obj, boolean z9) throws IOException {
        this.f29705e.b(cVar, z9);
        fVar.a(obj, this.f29705e);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.firebase.encoders.e a(@NonNull com.google.firebase.encoders.c cVar, double d4, boolean z9) throws IOException {
        if (z9 && d4 == 0.0d) {
            return this;
        }
        B((v(cVar) << 3) | 1);
        this.f29701a.write(A(8).putDouble(d4).array());
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final /* synthetic */ com.google.firebase.encoders.e b(@NonNull com.google.firebase.encoders.c cVar, boolean z9) throws IOException {
        q(cVar, z9 ? 1 : 0, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final /* synthetic */ com.google.firebase.encoders.e c(@NonNull com.google.firebase.encoders.c cVar, long j4) throws IOException {
        r(cVar, j4, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final /* synthetic */ com.google.firebase.encoders.e d(@NonNull com.google.firebase.encoders.c cVar, int i4) throws IOException {
        q(cVar, i4, true);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.firebase.encoders.e e(@NonNull com.google.firebase.encoders.c cVar, float f10, boolean z9) throws IOException {
        if (z9 && f10 == 0.0f) {
            return this;
        }
        B((v(cVar) << 3) | 5);
        this.f29701a.write(A(4).putFloat(f10).array());
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e f(@NonNull com.google.firebase.encoders.c cVar, float f10) throws IOException {
        e(cVar, f10, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e g(@NonNull com.google.firebase.encoders.c cVar) throws IOException {
        throw new EncodingException("nested() is not implemented for protobuf encoding.");
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e h(@NonNull com.google.firebase.encoders.c cVar, double d4) throws IOException {
        a(cVar, d4, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e i(@NonNull String str, boolean z9) throws IOException {
        q(com.google.firebase.encoders.c.d(str), z9 ? 1 : 0, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e j(@NonNull String str, double d4) throws IOException {
        a(com.google.firebase.encoders.c.d(str), d4, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e k(@NonNull String str, long j4) throws IOException {
        r(com.google.firebase.encoders.c.d(str), j4, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e l(@NonNull String str, int i4) throws IOException {
        q(com.google.firebase.encoders.c.d(str), i4, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e m(@NonNull com.google.firebase.encoders.c cVar, @Nullable Object obj) throws IOException {
        o(cVar, obj, true);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e n(@Nullable Object obj) throws IOException {
        t(obj);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.firebase.encoders.e o(@NonNull com.google.firebase.encoders.c cVar, @Nullable Object obj, boolean z9) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z9 && charSequence.length() == 0) {
                return this;
            }
            B((v(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f29697f);
            B(bytes.length);
            this.f29701a.write(bytes);
            return this;
        } else if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                o(cVar, obj2, false);
            }
            return this;
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                y(f29700i, cVar, entry, false);
            }
            return this;
        } else if (obj instanceof Double) {
            a(cVar, ((Double) obj).doubleValue(), z9);
            return this;
        } else if (obj instanceof Float) {
            e(cVar, ((Float) obj).floatValue(), z9);
            return this;
        } else if (obj instanceof Number) {
            r(cVar, ((Number) obj).longValue(), z9);
            return this;
        } else if (obj instanceof Boolean) {
            q(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z9);
            return this;
        } else if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z9 && bArr.length == 0) {
                return this;
            }
            B((v(cVar) << 3) | 2);
            B(bArr.length);
            this.f29701a.write(bArr);
            return this;
        } else {
            com.google.firebase.encoders.d dVar = (com.google.firebase.encoders.d) this.f29702b.get(obj.getClass());
            if (dVar != null) {
                y(dVar, cVar, obj, z9);
                return this;
            }
            com.google.firebase.encoders.f fVar = (com.google.firebase.encoders.f) this.f29703c.get(obj.getClass());
            if (fVar != null) {
                z(fVar, cVar, obj, z9);
                return this;
            } else if (obj instanceof f0) {
                q(cVar, ((f0) obj).zza(), true);
                return this;
            } else if (obj instanceof Enum) {
                q(cVar, ((Enum) obj).ordinal(), true);
                return this;
            } else {
                y(this.f29704d, cVar, obj, z9);
                return this;
            }
        }
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e p(@NonNull String str, @Nullable Object obj) throws IOException {
        o(com.google.firebase.encoders.c.d(str), obj, true);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i0 q(@NonNull com.google.firebase.encoders.c cVar, int i4, boolean z9) throws IOException {
        if (z9 && i4 == 0) {
            return this;
        }
        g0 x9 = x(cVar);
        zzbi zzbiVar = zzbi.DEFAULT;
        int ordinal = x9.zzb().ordinal();
        if (ordinal == 0) {
            B(x9.zza() << 3);
            B(i4);
        } else if (ordinal == 1) {
            B(x9.zza() << 3);
            B((i4 + i4) ^ (i4 >> 31));
        } else if (ordinal == 2) {
            B((x9.zza() << 3) | 5);
            this.f29701a.write(A(4).putInt(i4).array());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i0 r(@NonNull com.google.firebase.encoders.c cVar, long j4, boolean z9) throws IOException {
        if (z9 && j4 == 0) {
            return this;
        }
        g0 x9 = x(cVar);
        zzbi zzbiVar = zzbi.DEFAULT;
        int ordinal = x9.zzb().ordinal();
        if (ordinal == 0) {
            B(x9.zza() << 3);
            C(j4);
        } else if (ordinal == 1) {
            B(x9.zza() << 3);
            C((j4 >> 63) ^ (j4 + j4));
        } else if (ordinal == 2) {
            B((x9.zza() << 3) | 1);
            this.f29701a.write(A(8).putLong(j4).array());
        }
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e s(@NonNull String str) throws IOException {
        return g(com.google.firebase.encoders.c.d(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i0 t(@Nullable Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        com.google.firebase.encoders.d dVar = (com.google.firebase.encoders.d) this.f29702b.get(obj.getClass());
        if (dVar != null) {
            dVar.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for ".concat(String.valueOf(obj.getClass())));
    }
}
