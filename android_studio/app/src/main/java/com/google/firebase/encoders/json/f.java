package com.google.firebase.encoders.json;

import android.util.Base64;
import android.util.JsonWriter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Map;

/* compiled from: JsonValueObjectEncoderContext.java */
/* loaded from: classes2.dex */
final class f implements com.google.firebase.encoders.e, com.google.firebase.encoders.g {

    /* renamed from: a  reason: collision with root package name */
    private f f35508a = null;

    /* renamed from: b  reason: collision with root package name */
    private boolean f35509b = true;

    /* renamed from: c  reason: collision with root package name */
    private final JsonWriter f35510c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<Class<?>, com.google.firebase.encoders.d<?>> f35511d;

    /* renamed from: e  reason: collision with root package name */
    private final Map<Class<?>, com.google.firebase.encoders.f<?>> f35512e;

    /* renamed from: f  reason: collision with root package name */
    private final com.google.firebase.encoders.d<Object> f35513f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f35514g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull Writer writer, @NonNull Map<Class<?>, com.google.firebase.encoders.d<?>> map, @NonNull Map<Class<?>, com.google.firebase.encoders.f<?>> map2, com.google.firebase.encoders.d<Object> dVar, boolean z9) {
        this.f35510c = new JsonWriter(writer);
        this.f35511d = map;
        this.f35512e = map2;
        this.f35513f = dVar;
        this.f35514g = z9;
    }

    private boolean G(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private f J(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        L();
        this.f35510c.name(str);
        if (obj == null) {
            this.f35510c.nullValue();
            return this;
        }
        return x(obj, false);
    }

    private f K(@NonNull String str, @Nullable Object obj) throws IOException, EncodingException {
        if (obj == null) {
            return this;
        }
        L();
        this.f35510c.name(str);
        return x(obj, false);
    }

    private void L() throws IOException {
        if (this.f35509b) {
            f fVar = this.f35508a;
            if (fVar != null) {
                fVar.L();
                this.f35508a.f35509b = false;
                this.f35508a = null;
                this.f35510c.endObject();
                return;
            }
            return;
        }
        throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    /* renamed from: A */
    public f l(@NonNull String str, int i4) throws IOException {
        L();
        this.f35510c.name(str);
        return add(i4);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    /* renamed from: B */
    public f k(@NonNull String str, long j4) throws IOException {
        L();
        this.f35510c.name(str);
        return a(j4);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    /* renamed from: C */
    public f p(@NonNull String str, @Nullable Object obj) throws IOException {
        if (this.f35514g) {
            return K(str, obj);
        }
        return J(str, obj);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    /* renamed from: D */
    public f i(@NonNull String str, boolean z9) throws IOException {
        L();
        this.f35510c.name(str);
        return o(z9);
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    /* renamed from: E */
    public f o(boolean z9) throws IOException {
        L();
        this.f35510c.value(z9);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    /* renamed from: F */
    public f e(@Nullable byte[] bArr) throws IOException {
        L();
        if (bArr == null) {
            this.f35510c.nullValue();
        } else {
            this.f35510c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void H() throws IOException {
        L();
        this.f35510c.flush();
    }

    f I(com.google.firebase.encoders.d<Object> dVar, Object obj, boolean z9) throws IOException {
        if (!z9) {
            this.f35510c.beginObject();
        }
        dVar.a(obj, this);
        if (!z9) {
            this.f35510c.endObject();
        }
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e b(@NonNull com.google.firebase.encoders.c cVar, boolean z9) throws IOException {
        return i(cVar.b(), z9);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e c(@NonNull com.google.firebase.encoders.c cVar, long j4) throws IOException {
        return k(cVar.b(), j4);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e d(@NonNull com.google.firebase.encoders.c cVar, int i4) throws IOException {
        return l(cVar.b(), i4);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e f(@NonNull com.google.firebase.encoders.c cVar, float f10) throws IOException {
        return j(cVar.b(), f10);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e g(@NonNull com.google.firebase.encoders.c cVar) throws IOException {
        return s(cVar.b());
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e h(@NonNull com.google.firebase.encoders.c cVar, double d4) throws IOException {
        return j(cVar.b(), d4);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e m(@NonNull com.google.firebase.encoders.c cVar, @Nullable Object obj) throws IOException {
        return p(cVar.b(), obj);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e n(@Nullable Object obj) throws IOException {
        return x(obj, true);
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    public com.google.firebase.encoders.e s(@NonNull String str) throws IOException {
        L();
        this.f35508a = new f(this);
        this.f35510c.name(str);
        this.f35510c.beginObject();
        return this.f35508a;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    /* renamed from: t */
    public f q(double d4) throws IOException {
        L();
        this.f35510c.value(d4);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    /* renamed from: u */
    public f r(float f10) throws IOException {
        L();
        this.f35510c.value(f10);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    /* renamed from: v */
    public f add(int i4) throws IOException {
        L();
        this.f35510c.value(i4);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    /* renamed from: w */
    public f a(long j4) throws IOException {
        L();
        this.f35510c.value(j4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public f x(@Nullable Object obj, boolean z9) throws IOException {
        int[] iArr;
        int i4 = 0;
        if (z9 && G(obj)) {
            Object[] objArr = new Object[1];
            objArr[0] = obj == null ? null : obj.getClass();
            throw new EncodingException(String.format("%s cannot be encoded inline", objArr));
        } else if (obj == null) {
            this.f35510c.nullValue();
            return this;
        } else if (obj instanceof Number) {
            this.f35510c.value((Number) obj);
            return this;
        } else if (obj.getClass().isArray()) {
            if (obj instanceof byte[]) {
                return e((byte[]) obj);
            }
            this.f35510c.beginArray();
            if (obj instanceof int[]) {
                int length = ((int[]) obj).length;
                while (i4 < length) {
                    this.f35510c.value(iArr[i4]);
                    i4++;
                }
            } else if (obj instanceof long[]) {
                long[] jArr = (long[]) obj;
                int length2 = jArr.length;
                while (i4 < length2) {
                    a(jArr[i4]);
                    i4++;
                }
            } else if (obj instanceof double[]) {
                double[] dArr = (double[]) obj;
                int length3 = dArr.length;
                while (i4 < length3) {
                    this.f35510c.value(dArr[i4]);
                    i4++;
                }
            } else if (obj instanceof boolean[]) {
                boolean[] zArr = (boolean[]) obj;
                int length4 = zArr.length;
                while (i4 < length4) {
                    this.f35510c.value(zArr[i4]);
                    i4++;
                }
            } else if (obj instanceof Number[]) {
                for (Number number : (Number[]) obj) {
                    x(number, false);
                }
            } else {
                for (Object obj2 : (Object[]) obj) {
                    x(obj2, false);
                }
            }
            this.f35510c.endArray();
            return this;
        } else if (obj instanceof Collection) {
            this.f35510c.beginArray();
            for (Object obj3 : (Collection) obj) {
                x(obj3, false);
            }
            this.f35510c.endArray();
            return this;
        } else if (obj instanceof Map) {
            this.f35510c.beginObject();
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                try {
                    p((String) key, entry.getValue());
                } catch (ClassCastException e4) {
                    throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e4);
                }
            }
            this.f35510c.endObject();
            return this;
        } else {
            com.google.firebase.encoders.d<?> dVar = this.f35511d.get(obj.getClass());
            if (dVar != null) {
                return I(dVar, obj, z9);
            }
            com.google.firebase.encoders.f<?> fVar = this.f35512e.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            } else if (obj instanceof Enum) {
                add(((Enum) obj).name());
                return this;
            } else {
                return I(this.f35513f, obj, z9);
            }
        }
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    /* renamed from: y */
    public f add(@Nullable String str) throws IOException {
        L();
        this.f35510c.value(str);
        return this;
    }

    @Override // com.google.firebase.encoders.e
    @NonNull
    /* renamed from: z */
    public f j(@NonNull String str, double d4) throws IOException {
        L();
        this.f35510c.name(str);
        return q(d4);
    }

    private f(f fVar) {
        this.f35510c = fVar.f35510c;
        this.f35511d = fVar.f35511d;
        this.f35512e = fVar.f35512e;
        this.f35513f = fVar.f35513f;
        this.f35514g = fVar.f35514g;
    }
}
