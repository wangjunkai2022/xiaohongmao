package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.server.converter.zaa;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import y2.d0;
import y2.r;
import y2.s;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
@y
/* loaded from: classes2.dex */
public abstract class FastJsonResponse {

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @y
    /* loaded from: classes2.dex */
    public interface a<I, O> {
        int zaa();

        int zab();

        @Nullable
        O zac(@NonNull I i4);

        @NonNull
        I zad(@NonNull O o9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static final <O, I> I zaD(@NonNull Field<I, O> field, @Nullable Object obj) {
        return ((Field) field).zak != null ? field.zaf(obj) : obj;
    }

    private final <I, O> void zaE(Field<I, O> field, @Nullable I i4) {
        String str = field.zae;
        O zae = field.zae(i4);
        int i10 = field.zac;
        switch (i10) {
            case 0:
                if (zae != null) {
                    setIntegerInternal(field, str, ((Integer) zae).intValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 1:
                zaf(field, str, (BigInteger) zae);
                return;
            case 2:
                if (zae != null) {
                    setLongInternal(field, str, ((Long) zae).longValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 3:
            default:
                StringBuilder sb = new StringBuilder(44);
                sb.append("Unsupported type for conversion: ");
                sb.append(i10);
                throw new IllegalStateException(sb.toString());
            case 4:
                if (zae != null) {
                    zan(field, str, ((Double) zae).doubleValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 5:
                zab(field, str, (BigDecimal) zae);
                return;
            case 6:
                if (zae != null) {
                    setBooleanInternal(field, str, ((Boolean) zae).booleanValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 7:
                setStringInternal(field, str, (String) zae);
                return;
            case 8:
            case 9:
                if (zae != null) {
                    setDecodedBytesInternal(field, str, (byte[]) zae);
                    return;
                } else {
                    zaG(str);
                    return;
                }
        }
    }

    private static final void zaF(StringBuilder sb, Field field, Object obj) {
        int i4 = field.zaa;
        if (i4 == 11) {
            Class<? extends FastJsonResponse> cls = field.zag;
            u.k(cls);
            sb.append(cls.cast(obj).toString());
        } else if (i4 == 7) {
            sb.append("\"");
            sb.append(r.b((String) obj));
            sb.append("\"");
        } else {
            sb.append(obj);
        }
    }

    private static final <O> void zaG(String str) {
        if (Log.isLoggable("FastJsonResponse", 6)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 58);
            sb.append("Output field (");
            sb.append(str);
            sb.append(") has a null value, but expected a primitive");
            Log.e("FastJsonResponse", sb.toString());
        }
    }

    @u2.a
    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@NonNull Field field, @NonNull String str, @Nullable ArrayList<T> arrayList) {
        throw new UnsupportedOperationException("Concrete type array not supported");
    }

    @u2.a
    public <T extends FastJsonResponse> void addConcreteTypeInternal(@NonNull Field field, @NonNull String str, @NonNull T t9) {
        throw new UnsupportedOperationException("Concrete type not supported");
    }

    @NonNull
    @u2.a
    public abstract Map<String, Field<?, ?>> getFieldMappings();

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    @u2.a
    public Object getFieldValue(@NonNull Field field) {
        String str = field.zae;
        if (field.zag != null) {
            u.s(getValueObject(str) == null, "Concrete field shouldn't be value object: %s", field.zae);
            try {
                char upperCase = Character.toUpperCase(str.charAt(0));
                String substring = str.substring(1);
                StringBuilder sb = new StringBuilder(String.valueOf(substring).length() + 4);
                sb.append("get");
                sb.append(upperCase);
                sb.append(substring);
                return getClass().getMethod(sb.toString(), new Class[0]).invoke(this, new Object[0]);
            } catch (Exception e4) {
                throw new RuntimeException(e4);
            }
        }
        return getValueObject(str);
    }

    @Nullable
    @u2.a
    protected abstract Object getValueObject(@NonNull String str);

    /* JADX INFO: Access modifiers changed from: protected */
    @u2.a
    public boolean isFieldSet(@NonNull Field field) {
        if (field.zac == 11) {
            if (field.zad) {
                throw new UnsupportedOperationException("Concrete type arrays not supported");
            }
            throw new UnsupportedOperationException("Concrete types not supported");
        }
        return isPrimitiveFieldSet(field.zae);
    }

    @u2.a
    protected abstract boolean isPrimitiveFieldSet(@NonNull String str);

    @u2.a
    protected void setBooleanInternal(@NonNull Field<?, ?> field, @NonNull String str, boolean z9) {
        throw new UnsupportedOperationException("Boolean not supported");
    }

    @u2.a
    protected void setDecodedBytesInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable byte[] bArr) {
        throw new UnsupportedOperationException("byte[] not supported");
    }

    @u2.a
    protected void setIntegerInternal(@NonNull Field<?, ?> field, @NonNull String str, int i4) {
        throw new UnsupportedOperationException("Integer not supported");
    }

    @u2.a
    protected void setLongInternal(@NonNull Field<?, ?> field, @NonNull String str, long j4) {
        throw new UnsupportedOperationException("Long not supported");
    }

    @u2.a
    protected void setStringInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable String str2) {
        throw new UnsupportedOperationException("String not supported");
    }

    @u2.a
    protected void setStringMapInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable Map<String, String> map) {
        throw new UnsupportedOperationException("String map not supported");
    }

    @u2.a
    protected void setStringsInternal(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<String> arrayList) {
        throw new UnsupportedOperationException("String list not supported");
    }

    @NonNull
    @u2.a
    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object zaD = zaD(field, getFieldValue(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"");
                sb.append(str);
                sb.append("\":");
                if (zaD == null) {
                    sb.append("null");
                } else {
                    switch (field.zac) {
                        case 8:
                            sb.append("\"");
                            sb.append(y2.c.d((byte[]) zaD));
                            sb.append("\"");
                            continue;
                        case 9:
                            sb.append("\"");
                            sb.append(y2.c.e((byte[]) zaD));
                            sb.append("\"");
                            continue;
                        case 10:
                            s.a(sb, (HashMap) zaD);
                            continue;
                        default:
                            if (field.zab) {
                                ArrayList arrayList = (ArrayList) zaD;
                                sb.append("[");
                                int size = arrayList.size();
                                for (int i4 = 0; i4 < size; i4++) {
                                    if (i4 > 0) {
                                        sb.append(",");
                                    }
                                    Object obj = arrayList.get(i4);
                                    if (obj != null) {
                                        zaF(sb, field, obj);
                                    }
                                }
                                sb.append("]");
                                break;
                            } else {
                                zaF(sb, field, zaD);
                                continue;
                            }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.append(com.alipay.sdk.util.i.f6967d);
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    public final <O> void zaA(@NonNull Field<String, O> field, @Nullable String str) {
        if (((Field) field).zak != null) {
            zaE(field, str);
        } else {
            setStringInternal(field, field.zae, str);
        }
    }

    public final <O> void zaB(@NonNull Field<Map<String, String>, O> field, @Nullable Map<String, String> map) {
        if (((Field) field).zak != null) {
            zaE(field, map);
        } else {
            setStringMapInternal(field, field.zae, map);
        }
    }

    public final <O> void zaC(@NonNull Field<ArrayList<String>, O> field, @Nullable ArrayList<String> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            setStringsInternal(field, field.zae, arrayList);
        }
    }

    public final <O> void zaa(@NonNull Field<BigDecimal, O> field, @Nullable BigDecimal bigDecimal) {
        if (((Field) field).zak != null) {
            zaE(field, bigDecimal);
        } else {
            zab(field, field.zae, bigDecimal);
        }
    }

    protected void zab(@NonNull Field<?, ?> field, @NonNull String str, @Nullable BigDecimal bigDecimal) {
        throw new UnsupportedOperationException("BigDecimal not supported");
    }

    public final <O> void zac(@NonNull Field<ArrayList<BigDecimal>, O> field, @Nullable ArrayList<BigDecimal> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zad(field, field.zae, arrayList);
        }
    }

    protected void zad(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigDecimal> arrayList) {
        throw new UnsupportedOperationException("BigDecimal list not supported");
    }

    public final <O> void zae(@NonNull Field<BigInteger, O> field, @Nullable BigInteger bigInteger) {
        if (((Field) field).zak != null) {
            zaE(field, bigInteger);
        } else {
            zaf(field, field.zae, bigInteger);
        }
    }

    protected void zaf(@NonNull Field<?, ?> field, @NonNull String str, @Nullable BigInteger bigInteger) {
        throw new UnsupportedOperationException("BigInteger not supported");
    }

    public final <O> void zag(@NonNull Field<ArrayList<BigInteger>, O> field, @Nullable ArrayList<BigInteger> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zah(field, field.zae, arrayList);
        }
    }

    protected void zah(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigInteger> arrayList) {
        throw new UnsupportedOperationException("BigInteger list not supported");
    }

    public final <O> void zai(@NonNull Field<Boolean, O> field, boolean z9) {
        if (((Field) field).zak != null) {
            zaE(field, Boolean.valueOf(z9));
        } else {
            setBooleanInternal(field, field.zae, z9);
        }
    }

    public final <O> void zaj(@NonNull Field<ArrayList<Boolean>, O> field, @Nullable ArrayList<Boolean> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zak(field, field.zae, arrayList);
        }
    }

    protected void zak(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Boolean> arrayList) {
        throw new UnsupportedOperationException("Boolean list not supported");
    }

    public final <O> void zal(@NonNull Field<byte[], O> field, @Nullable byte[] bArr) {
        if (((Field) field).zak != null) {
            zaE(field, bArr);
        } else {
            setDecodedBytesInternal(field, field.zae, bArr);
        }
    }

    public final <O> void zam(@NonNull Field<Double, O> field, double d4) {
        if (((Field) field).zak != null) {
            zaE(field, Double.valueOf(d4));
        } else {
            zan(field, field.zae, d4);
        }
    }

    protected void zan(@NonNull Field<?, ?> field, @NonNull String str, double d4) {
        throw new UnsupportedOperationException("Double not supported");
    }

    public final <O> void zao(@NonNull Field<ArrayList<Double>, O> field, @Nullable ArrayList<Double> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zap(field, field.zae, arrayList);
        }
    }

    protected void zap(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Double> arrayList) {
        throw new UnsupportedOperationException("Double list not supported");
    }

    public final <O> void zaq(@NonNull Field<Float, O> field, float f10) {
        if (((Field) field).zak != null) {
            zaE(field, Float.valueOf(f10));
        } else {
            zar(field, field.zae, f10);
        }
    }

    protected void zar(@NonNull Field<?, ?> field, @NonNull String str, float f10) {
        throw new UnsupportedOperationException("Float not supported");
    }

    public final <O> void zas(@NonNull Field<ArrayList<Float>, O> field, @Nullable ArrayList<Float> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zat(field, field.zae, arrayList);
        }
    }

    protected void zat(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Float> arrayList) {
        throw new UnsupportedOperationException("Float list not supported");
    }

    public final <O> void zau(@NonNull Field<Integer, O> field, int i4) {
        if (((Field) field).zak != null) {
            zaE(field, Integer.valueOf(i4));
        } else {
            setIntegerInternal(field, field.zae, i4);
        }
    }

    public final <O> void zav(@NonNull Field<ArrayList<Integer>, O> field, @Nullable ArrayList<Integer> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaw(field, field.zae, arrayList);
        }
    }

    protected void zaw(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Integer> arrayList) {
        throw new UnsupportedOperationException("Integer list not supported");
    }

    public final <O> void zax(@NonNull Field<Long, O> field, long j4) {
        if (((Field) field).zak != null) {
            zaE(field, Long.valueOf(j4));
        } else {
            setLongInternal(field, field.zae, j4);
        }
    }

    public final <O> void zay(@NonNull Field<ArrayList<Long>, O> field, @Nullable ArrayList<Long> arrayList) {
        if (((Field) field).zak != null) {
            zaE(field, arrayList);
        } else {
            zaz(field, field.zae, arrayList);
        }
    }

    protected void zaz(@NonNull Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Long> arrayList) {
        throw new UnsupportedOperationException("Long list not supported");
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @u2.a
    @SafeParcelable.a(creator = "FieldCreator")
    @y
    @d0
    /* loaded from: classes2.dex */
    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final j CREATOR = new j();
        @SafeParcelable.c(getter = "getTypeIn", id = 2)
        protected final int zaa;
        @SafeParcelable.c(getter = "isTypeInArray", id = 3)
        protected final boolean zab;
        @SafeParcelable.c(getter = "getTypeOut", id = 4)
        protected final int zac;
        @SafeParcelable.c(getter = "isTypeOutArray", id = 5)
        protected final boolean zad;
        @NonNull
        @SafeParcelable.c(getter = "getOutputFieldName", id = 6)
        protected final String zae;
        @SafeParcelable.c(getter = "getSafeParcelableFieldId", id = 7)
        protected final int zaf;
        @Nullable
        protected final Class<? extends FastJsonResponse> zag;
        @Nullable
        @SafeParcelable.c(getter = "getConcreteTypeName", id = 8)
        protected final String zah;
        @SafeParcelable.g(getter = "getVersionCode", id = 1)
        private final int zai;
        private zan zaj;
        @Nullable
        @SafeParcelable.c(getter = "getWrappedConverter", id = 9, type = "com.google.android.gms.common.server.converter.ConverterWrapper")
        private a<I, O> zak;

        /* JADX INFO: Access modifiers changed from: package-private */
        @SafeParcelable.b
        public Field(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) int i10, @SafeParcelable.e(id = 3) boolean z9, @SafeParcelable.e(id = 4) int i11, @SafeParcelable.e(id = 5) boolean z10, @SafeParcelable.e(id = 6) String str, @SafeParcelable.e(id = 7) int i12, @Nullable @SafeParcelable.e(id = 8) String str2, @Nullable @SafeParcelable.e(id = 9) zaa zaaVar) {
            this.zai = i4;
            this.zaa = i10;
            this.zab = z9;
            this.zac = i11;
            this.zad = z10;
            this.zae = str;
            this.zaf = i12;
            if (str2 == null) {
                this.zag = null;
                this.zah = null;
            } else {
                this.zag = SafeParcelResponse.class;
                this.zah = str2;
            }
            if (zaaVar == null) {
                this.zak = null;
            } else {
                this.zak = (a<I, O>) zaaVar.zab();
            }
        }

        @NonNull
        @u2.a
        @d0
        public static Field<byte[], byte[]> forBase64(@NonNull String str, int i4) {
            return new Field<>(8, false, 8, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static Field<Boolean, Boolean> forBoolean(@NonNull String str, int i4) {
            return new Field<>(6, false, 6, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(@NonNull String str, int i4, @NonNull Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i4, cls, null);
        }

        @NonNull
        @u2.a
        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(@NonNull String str, int i4, @NonNull Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i4, cls, null);
        }

        @NonNull
        @u2.a
        public static Field<Double, Double> forDouble(@NonNull String str, int i4) {
            return new Field<>(4, false, 4, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static Field<Float, Float> forFloat(@NonNull String str, int i4) {
            return new Field<>(3, false, 3, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        @d0
        public static Field<Integer, Integer> forInteger(@NonNull String str, int i4) {
            return new Field<>(0, false, 0, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static Field<Long, Long> forLong(@NonNull String str, int i4) {
            return new Field<>(2, false, 2, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static Field<String, String> forString(@NonNull String str, int i4) {
            return new Field<>(7, false, 7, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static Field<HashMap<String, String>, HashMap<String, String>> forStringMap(@NonNull String str, int i4) {
            return new Field<>(10, false, 10, false, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static Field<ArrayList<String>, ArrayList<String>> forStrings(@NonNull String str, int i4) {
            return new Field<>(7, true, 7, true, str, i4, null, null);
        }

        @NonNull
        @u2.a
        public static Field withConverter(@NonNull String str, int i4, @NonNull a<?, ?> aVar, boolean z9) {
            aVar.zaa();
            aVar.zab();
            return new Field(7, z9, 0, false, str, i4, null, aVar);
        }

        @u2.a
        public int getSafeParcelableFieldId() {
            return this.zaf;
        }

        @NonNull
        public final String toString() {
            s.a a10 = com.google.android.gms.common.internal.s.d(this).a("versionCode", Integer.valueOf(this.zai)).a("typeIn", Integer.valueOf(this.zaa)).a("typeInArray", Boolean.valueOf(this.zab)).a("typeOut", Integer.valueOf(this.zac)).a("typeOutArray", Boolean.valueOf(this.zad)).a("outputFieldName", this.zae).a("safeParcelFieldId", Integer.valueOf(this.zaf)).a("concreteTypeName", zag());
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls != null) {
                a10.a("concreteType.class", cls.getCanonicalName());
            }
            a<I, O> aVar = this.zak;
            if (aVar != null) {
                a10.a("converterName", aVar.getClass().getCanonicalName());
            }
            return a10.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(@NonNull Parcel parcel, int i4) {
            int a10 = w2.a.a(parcel);
            w2.a.F(parcel, 1, this.zai);
            w2.a.F(parcel, 2, this.zaa);
            w2.a.g(parcel, 3, this.zab);
            w2.a.F(parcel, 4, this.zac);
            w2.a.g(parcel, 5, this.zad);
            w2.a.Y(parcel, 6, this.zae, false);
            w2.a.F(parcel, 7, getSafeParcelableFieldId());
            w2.a.Y(parcel, 8, zag(), false);
            w2.a.S(parcel, 9, zaa(), i4, false);
            w2.a.b(parcel, a10);
        }

        @Nullable
        final zaa zaa() {
            a<I, O> aVar = this.zak;
            if (aVar == null) {
                return null;
            }
            return zaa.zaa(aVar);
        }

        @NonNull
        public final Field<I, O> zab() {
            return new Field<>(this.zai, this.zaa, this.zab, this.zac, this.zad, this.zae, this.zaf, this.zah, zaa());
        }

        @NonNull
        public final FastJsonResponse zad() throws InstantiationException, IllegalAccessException {
            u.k(this.zag);
            Class<? extends FastJsonResponse> cls = this.zag;
            if (cls == SafeParcelResponse.class) {
                u.k(this.zah);
                u.l(this.zaj, "The field mapping dictionary must be set if the concrete type is a SafeParcelResponse object.");
                return new SafeParcelResponse(this.zaj, this.zah);
            }
            return cls.newInstance();
        }

        @NonNull
        public final O zae(@Nullable I i4) {
            u.k(this.zak);
            return (O) u.k(this.zak.zac(i4));
        }

        @NonNull
        public final I zaf(@NonNull O o9) {
            u.k(this.zak);
            return this.zak.zad(o9);
        }

        @Nullable
        final String zag() {
            String str = this.zah;
            if (str == null) {
                return null;
            }
            return str;
        }

        @NonNull
        public final Map<String, Field<?, ?>> zah() {
            u.k(this.zah);
            u.k(this.zaj);
            return (Map) u.k(this.zaj.zab(this.zah));
        }

        public final void zai(zan zanVar) {
            this.zaj = zanVar;
        }

        public final boolean zaj() {
            return this.zak != null;
        }

        protected Field(int i4, boolean z9, int i10, boolean z10, @NonNull String str, int i11, @Nullable Class<? extends FastJsonResponse> cls, @Nullable a<I, O> aVar) {
            this.zai = 1;
            this.zaa = i4;
            this.zab = z9;
            this.zac = i10;
            this.zad = z10;
            this.zae = str;
            this.zaf = i11;
            this.zag = cls;
            if (cls == null) {
                this.zah = null;
            } else {
                this.zah = cls.getCanonicalName();
            }
            this.zak = aVar;
        }
    }
}
