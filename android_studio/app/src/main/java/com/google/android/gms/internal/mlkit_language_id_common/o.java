package com.google.android.gms.internal.mlkit_language_id_common;

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
/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class o implements com.google.firebase.encoders.e {

    /* renamed from: f  reason: collision with root package name */
    private static final Charset f30758f = Charset.forName("UTF-8");

    /* renamed from: g  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30759g;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.firebase.encoders.c f30760h;

    /* renamed from: i  reason: collision with root package name */
    private static final com.google.firebase.encoders.d f30761i;

    /* renamed from: a  reason: collision with root package name */
    private OutputStream f30762a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f30763b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f30764c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.firebase.encoders.d f30765d;

    /* renamed from: e  reason: collision with root package name */
    private final s f30766e = new s(this);

    static {
        c.b a10 = com.google.firebase.encoders.c.a("key");
        j jVar = new j();
        jVar.a(1);
        f30759g = a10.b(jVar.b()).a();
        c.b a11 = com.google.firebase.encoders.c.a("value");
        j jVar2 = new j();
        jVar2.a(2);
        f30760h = a11.b(jVar2.b()).a();
        f30761i = n.f30733a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(OutputStream outputStream, Map map, Map map2, com.google.firebase.encoders.d dVar) {
        this.f30762a = outputStream;
        this.f30763b = map;
        this.f30764c = map2;
        this.f30765d = dVar;
    }

    private static ByteBuffer A(int i4) {
        return ByteBuffer.allocate(i4).order(ByteOrder.LITTLE_ENDIAN);
    }

    private final void B(int i4) throws IOException {
        while (true) {
            int i10 = ((i4 & (-128)) > 0L ? 1 : ((i4 & (-128)) == 0L ? 0 : -1));
            OutputStream outputStream = this.f30762a;
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
            OutputStream outputStream = this.f30762a;
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
        eVar.m(f30759g, entry.getKey());
        eVar.m(f30760h, entry.getValue());
    }

    private static int v(com.google.firebase.encoders.c cVar) {
        m mVar = (m) cVar.c(m.class);
        if (mVar != null) {
            return mVar.zza();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private final long w(com.google.firebase.encoders.d dVar, Object obj) throws IOException {
        k kVar = new k();
        try {
            OutputStream outputStream = this.f30762a;
            this.f30762a = kVar;
            dVar.a(obj, this);
            this.f30762a = outputStream;
            long a10 = kVar.a();
            kVar.close();
            return a10;
        } catch (Throwable th) {
            try {
                kVar.close();
            } catch (Throwable th2) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                } catch (Exception unused) {
                }
            }
            throw th;
        }
    }

    private static m x(com.google.firebase.encoders.c cVar) {
        m mVar = (m) cVar.c(m.class);
        if (mVar != null) {
            return mVar;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private final o y(com.google.firebase.encoders.d dVar, com.google.firebase.encoders.c cVar, Object obj, boolean z9) throws IOException {
        long w9 = w(dVar, obj);
        if (z9 && w9 == 0) {
            return this;
        }
        B((v(cVar) << 3) | 2);
        C(w9);
        dVar.a(obj, this);
        return this;
    }

    private final o z(com.google.firebase.encoders.f fVar, com.google.firebase.encoders.c cVar, Object obj, boolean z9) throws IOException {
        this.f30766e.b(cVar, z9);
        fVar.a(obj, this.f30766e);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.firebase.encoders.e a(@NonNull com.google.firebase.encoders.c cVar, double d4, boolean z9) throws IOException {
        if (z9 && d4 == 0.0d) {
            return this;
        }
        B((v(cVar) << 3) | 1);
        this.f30762a.write(A(8).putDouble(d4).array());
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
        this.f30762a.write(A(4).putFloat(f10).array());
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
            byte[] bytes = charSequence.toString().getBytes(f30758f);
            B(bytes.length);
            this.f30762a.write(bytes);
            return this;
        } else if (obj instanceof Collection) {
            for (Object obj2 : (Collection) obj) {
                o(cVar, obj2, false);
            }
            return this;
        } else if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                y(f30761i, cVar, entry, false);
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
            this.f30762a.write(bArr);
            return this;
        } else {
            com.google.firebase.encoders.d dVar = (com.google.firebase.encoders.d) this.f30763b.get(obj.getClass());
            if (dVar != null) {
                y(dVar, cVar, obj, z9);
                return this;
            }
            com.google.firebase.encoders.f fVar = (com.google.firebase.encoders.f) this.f30764c.get(obj.getClass());
            if (fVar != null) {
                z(fVar, cVar, obj, z9);
                return this;
            } else if (obj instanceof l) {
                q(cVar, ((l) obj).zza(), true);
                return this;
            } else if (obj instanceof Enum) {
                q(cVar, ((Enum) obj).ordinal(), true);
                return this;
            } else {
                y(this.f30765d, cVar, obj, z9);
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
    public final o q(@NonNull com.google.firebase.encoders.c cVar, int i4, boolean z9) throws IOException {
        if (z9 && i4 == 0) {
            return this;
        }
        m x9 = x(cVar);
        zzal zzalVar = zzal.DEFAULT;
        int ordinal = x9.zzb().ordinal();
        if (ordinal == 0) {
            B(x9.zza() << 3);
            B(i4);
        } else if (ordinal == 1) {
            B(x9.zza() << 3);
            B((i4 + i4) ^ (i4 >> 31));
        } else if (ordinal == 2) {
            B((x9.zza() << 3) | 5);
            this.f30762a.write(A(4).putInt(i4).array());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o r(@NonNull com.google.firebase.encoders.c cVar, long j4, boolean z9) throws IOException {
        if (z9 && j4 == 0) {
            return this;
        }
        m x9 = x(cVar);
        zzal zzalVar = zzal.DEFAULT;
        int ordinal = x9.zzb().ordinal();
        if (ordinal == 0) {
            B(x9.zza() << 3);
            C(j4);
        } else if (ordinal == 1) {
            B(x9.zza() << 3);
            C((j4 >> 63) ^ (j4 + j4));
        } else if (ordinal == 2) {
            B((x9.zza() << 3) | 1);
            this.f30762a.write(A(8).putLong(j4).array());
        }
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public final com.google.firebase.encoders.e s(@NonNull String str) throws IOException {
        return g(com.google.firebase.encoders.c.d(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final o t(@Nullable Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        com.google.firebase.encoders.d dVar = (com.google.firebase.encoders.d) this.f30763b.get(obj.getClass());
        if (dVar != null) {
            dVar.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for ".concat(String.valueOf(obj.getClass())));
    }
}
