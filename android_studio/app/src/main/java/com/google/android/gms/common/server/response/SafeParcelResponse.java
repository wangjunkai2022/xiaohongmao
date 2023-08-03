package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import y2.d0;
import y2.r;
import y2.s;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "SafeParcelResponseCreator")
@u2.a
@d0
/* loaded from: classes2.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    @NonNull
    @u2.a
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new n();
    @SafeParcelable.g(getter = "getVersionCode", id = 1)
    private final int zaa;
    @SafeParcelable.c(getter = "getParcel", id = 2)
    private final Parcel zab;
    private final int zac;
    @SafeParcelable.c(getter = "getFieldMappingDictionary", id = 3)
    private final zan zad;
    @Nullable
    private final String zae;
    private int zaf;
    private int zag;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public SafeParcelResponse(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) Parcel parcel, @SafeParcelable.e(id = 3) zan zanVar) {
        this.zaa = i4;
        this.zab = (Parcel) u.k(parcel);
        this.zac = 2;
        this.zad = zanVar;
        this.zae = zanVar == null ? null : zanVar.zaa();
        this.zaf = 2;
    }

    @NonNull
    @u2.a
    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(@NonNull T t9) {
        zan zanVar = new zan(t9.getClass());
        zaF(zanVar, t9);
        zanVar.zac();
        zanVar.zad();
        return new SafeParcelResponse(t9, zanVar, (String) u.k(t9.getClass().getCanonicalName()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static void zaF(zan zanVar, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (zanVar.zaf(cls)) {
            return;
        }
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        zanVar.zae(cls, fieldMappings);
        for (String str : fieldMappings.keySet()) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(str);
            Class<? extends FastJsonResponse> cls2 = field.zag;
            if (cls2 != null) {
                try {
                    zaF(zanVar, cls2.newInstance());
                } catch (IllegalAccessException e4) {
                    String valueOf = String.valueOf(((Class) u.k(field.zag)).getCanonicalName());
                    throw new IllegalStateException(valueOf.length() != 0 ? "Could not access object of type ".concat(valueOf) : new String("Could not access object of type "), e4);
                } catch (InstantiationException e10) {
                    String valueOf2 = String.valueOf(((Class) u.k(field.zag)).getCanonicalName());
                    throw new IllegalStateException(valueOf2.length() != 0 ? "Could not instantiate an object of type ".concat(valueOf2) : new String("Could not instantiate an object of type "), e10);
                }
            }
        }
    }

    private final void zaG(FastJsonResponse.Field<?, ?> field) {
        if (field.zaf == -1) {
            throw new IllegalStateException("Field does not have a valid safe parcelable field id.");
        }
        Parcel parcel = this.zab;
        if (parcel == null) {
            throw new IllegalStateException("Internal Parcel object is null.");
        }
        int i4 = this.zaf;
        if (i4 != 0) {
            if (i4 != 1) {
                throw new IllegalStateException("Attempted to parse JSON with a SafeParcelResponse object that is already filled with data.");
            }
            return;
        }
        this.zag = w2.a.a(parcel);
        this.zaf = 1;
    }

    private final void zaH(StringBuilder sb, Map<String, FastJsonResponse.Field<?, ?>> map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry<String, FastJsonResponse.Field<?, ?>> entry : map.entrySet()) {
            sparseArray.put(entry.getValue().getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int i02 = SafeParcelReader.i0(parcel);
        boolean z9 = false;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.O(X));
            if (entry2 != null) {
                if (z9) {
                    sb.append(",");
                }
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append("\"");
                sb.append((String) entry2.getKey());
                sb.append("\":");
                if (field.zaj()) {
                    int i4 = field.zac;
                    switch (i4) {
                        case 0:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Integer.valueOf(SafeParcelReader.Z(parcel, X))));
                            break;
                        case 1:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.c(parcel, X)));
                            break;
                        case 2:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Long.valueOf(SafeParcelReader.c0(parcel, X))));
                            break;
                        case 3:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Float.valueOf(SafeParcelReader.V(parcel, X))));
                            break;
                        case 4:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Double.valueOf(SafeParcelReader.T(parcel, X))));
                            break;
                        case 5:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.a(parcel, X)));
                            break;
                        case 6:
                            zaJ(sb, field, FastJsonResponse.zaD(field, Boolean.valueOf(SafeParcelReader.P(parcel, X))));
                            break;
                        case 7:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.G(parcel, X)));
                            break;
                        case 8:
                        case 9:
                            zaJ(sb, field, FastJsonResponse.zaD(field, SafeParcelReader.h(parcel, X)));
                            break;
                        case 10:
                            Bundle g4 = SafeParcelReader.g(parcel, X);
                            HashMap hashMap = new HashMap();
                            for (String str : g4.keySet()) {
                                hashMap.put(str, (String) u.k(g4.getString(str)));
                            }
                            zaJ(sb, field, FastJsonResponse.zaD(field, hashMap));
                            break;
                        case 11:
                            throw new IllegalArgumentException("Method does not accept concrete type.");
                        default:
                            StringBuilder sb2 = new StringBuilder(36);
                            sb2.append("Unknown field out type = ");
                            sb2.append(i4);
                            throw new IllegalArgumentException(sb2.toString());
                    }
                } else if (field.zad) {
                    sb.append("[");
                    switch (field.zac) {
                        case 0:
                            y2.b.l(sb, SafeParcelReader.u(parcel, X));
                            break;
                        case 1:
                            y2.b.n(sb, SafeParcelReader.d(parcel, X));
                            break;
                        case 2:
                            y2.b.m(sb, SafeParcelReader.w(parcel, X));
                            break;
                        case 3:
                            y2.b.k(sb, SafeParcelReader.o(parcel, X));
                            break;
                        case 4:
                            y2.b.j(sb, SafeParcelReader.l(parcel, X));
                            break;
                        case 5:
                            y2.b.n(sb, SafeParcelReader.b(parcel, X));
                            break;
                        case 6:
                            y2.b.o(sb, SafeParcelReader.e(parcel, X));
                            break;
                        case 7:
                            y2.b.p(sb, SafeParcelReader.H(parcel, X));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
                        case 11:
                            Parcel[] z10 = SafeParcelReader.z(parcel, X);
                            int length = z10.length;
                            for (int i10 = 0; i10 < length; i10++) {
                                if (i10 > 0) {
                                    sb.append(",");
                                }
                                z10[i10].setDataPosition(0);
                                zaH(sb, field.zah(), z10[i10]);
                            }
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out.");
                    }
                    sb.append("]");
                } else {
                    switch (field.zac) {
                        case 0:
                            sb.append(SafeParcelReader.Z(parcel, X));
                            break;
                        case 1:
                            sb.append(SafeParcelReader.c(parcel, X));
                            break;
                        case 2:
                            sb.append(SafeParcelReader.c0(parcel, X));
                            break;
                        case 3:
                            sb.append(SafeParcelReader.V(parcel, X));
                            break;
                        case 4:
                            sb.append(SafeParcelReader.T(parcel, X));
                            break;
                        case 5:
                            sb.append(SafeParcelReader.a(parcel, X));
                            break;
                        case 6:
                            sb.append(SafeParcelReader.P(parcel, X));
                            break;
                        case 7:
                            String G = SafeParcelReader.G(parcel, X);
                            sb.append("\"");
                            sb.append(r.b(G));
                            sb.append("\"");
                            break;
                        case 8:
                            byte[] h4 = SafeParcelReader.h(parcel, X);
                            sb.append("\"");
                            sb.append(y2.c.d(h4));
                            sb.append("\"");
                            break;
                        case 9:
                            byte[] h10 = SafeParcelReader.h(parcel, X);
                            sb.append("\"");
                            sb.append(y2.c.e(h10));
                            sb.append("\"");
                            break;
                        case 10:
                            Bundle g10 = SafeParcelReader.g(parcel, X);
                            Set<String> keySet = g10.keySet();
                            sb.append("{");
                            boolean z11 = true;
                            for (String str2 : keySet) {
                                if (!z11) {
                                    sb.append(",");
                                }
                                sb.append("\"");
                                sb.append(str2);
                                sb.append("\":\"");
                                sb.append(r.b(g10.getString(str2)));
                                sb.append("\"");
                                z11 = false;
                            }
                            sb.append(com.alipay.sdk.util.i.f6967d);
                            break;
                        case 11:
                            Parcel y9 = SafeParcelReader.y(parcel, X);
                            y9.setDataPosition(0);
                            zaH(sb, field.zah(), y9);
                            break;
                        default:
                            throw new IllegalStateException("Unknown field type out");
                    }
                }
                z9 = true;
            }
        }
        if (parcel.dataPosition() == i02) {
            sb.append('}');
            return;
        }
        StringBuilder sb3 = new StringBuilder(37);
        sb3.append("Overread allowed size end=");
        sb3.append(i02);
        throw new SafeParcelReader.ParseException(sb3.toString(), parcel);
    }

    private static final void zaI(StringBuilder sb, int i4, @Nullable Object obj) {
        switch (i4) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append("\"");
                sb.append(r.b(u.k(obj).toString()));
                sb.append("\"");
                return;
            case 8:
                sb.append("\"");
                sb.append(y2.c.d((byte[]) obj));
                sb.append("\"");
                return;
            case 9:
                sb.append("\"");
                sb.append(y2.c.e((byte[]) obj));
                sb.append("\"");
                return;
            case 10:
                s.a(sb, (HashMap) u.k(obj));
                return;
            case 11:
                throw new IllegalArgumentException("Method does not accept concrete type.");
            default:
                StringBuilder sb2 = new StringBuilder(26);
                sb2.append("Unknown type = ");
                sb2.append(i4);
                throw new IllegalArgumentException(sb2.toString());
        }
    }

    private static final void zaJ(StringBuilder sb, FastJsonResponse.Field<?, ?> field, Object obj) {
        if (field.zab) {
            ArrayList arrayList = (ArrayList) obj;
            sb.append("[");
            int size = arrayList.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (i4 != 0) {
                    sb.append(",");
                }
                zaI(sb, field.zaa, arrayList.get(i4));
            }
            sb.append("]");
            return;
        }
        zaI(sb, field.zaa, obj);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(@NonNull FastJsonResponse.Field field, @NonNull String str, @Nullable ArrayList<T> arrayList) {
        zaG(field);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) u.k(arrayList)).size();
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i4)).zaE());
        }
        w2.a.Q(this.zab, field.getSafeParcelableFieldId(), arrayList2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(@NonNull FastJsonResponse.Field field, @NonNull String str, @NonNull T t9) {
        zaG(field);
        w2.a.O(this.zab, field.getSafeParcelableFieldId(), ((SafeParcelResponse) t9).zaE(), true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @Nullable
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.zad;
        if (zanVar == null) {
            return null;
        }
        return zanVar.zab((String) u.k(this.zae));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    @NonNull
    public final Object getValueObject(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isPrimitiveFieldSet(@NonNull String str) {
        throw new UnsupportedOperationException("Converting to JSON does not require this method.");
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setBooleanInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, boolean z9) {
        zaG(field);
        w2.a.g(this.zab, field.getSafeParcelableFieldId(), z9);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setDecodedBytesInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable byte[] bArr) {
        zaG(field);
        w2.a.m(this.zab, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setIntegerInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, int i4) {
        zaG(field);
        w2.a.F(this.zab, field.getSafeParcelableFieldId(), i4);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setLongInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, long j4) {
        zaG(field);
        w2.a.K(this.zab, field.getSafeParcelableFieldId(), j4);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable String str2) {
        zaG(field);
        w2.a.Y(this.zab, field.getSafeParcelableFieldId(), str2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringMapInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable Map<String, String> map) {
        zaG(field);
        Bundle bundle = new Bundle();
        for (String str2 : ((Map) u.k(map)).keySet()) {
            bundle.putString(str2, map.get(str2));
        }
        w2.a.k(this.zab, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringsInternal(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<String> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        String[] strArr = new String[size];
        for (int i4 = 0; i4 < size; i4++) {
            strArr[i4] = arrayList.get(i4);
        }
        w2.a.Z(this.zab, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    @NonNull
    public final String toString() {
        u.l(this.zad, "Cannot convert to JSON on client side.");
        Parcel zaE = zaE();
        zaE.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zaH(sb, (Map) u.k(this.zad.zab((String) u.k(this.zae))), zaE);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        zan zanVar;
        int a10 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.O(parcel, 2, zaE(), false);
        int i10 = this.zac;
        if (i10 != 0) {
            zanVar = i10 != 1 ? this.zad : this.zad;
        } else {
            zanVar = null;
        }
        w2.a.S(parcel, 3, zanVar, i4, false);
        w2.a.b(parcel, a10);
    }

    @NonNull
    public final Parcel zaE() {
        int i4 = this.zaf;
        if (i4 == 0) {
            int a10 = w2.a.a(this.zab);
            this.zag = a10;
            w2.a.b(this.zab, a10);
            this.zaf = 2;
        } else if (i4 == 1) {
            w2.a.b(this.zab, this.zag);
            this.zaf = 2;
        }
        return this.zab;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zab(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable BigDecimal bigDecimal) {
        zaG(field);
        w2.a.c(this.zab, field.getSafeParcelableFieldId(), bigDecimal, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zad(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigDecimal> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i4 = 0; i4 < size; i4++) {
            bigDecimalArr[i4] = arrayList.get(i4);
        }
        w2.a.d(this.zab, field.getSafeParcelableFieldId(), bigDecimalArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaf(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable BigInteger bigInteger) {
        zaG(field);
        w2.a.e(this.zab, field.getSafeParcelableFieldId(), bigInteger, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zah(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<BigInteger> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i4 = 0; i4 < size; i4++) {
            bigIntegerArr[i4] = arrayList.get(i4);
        }
        w2.a.f(this.zab, field.getSafeParcelableFieldId(), bigIntegerArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zak(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Boolean> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i4 = 0; i4 < size; i4++) {
            zArr[i4] = arrayList.get(i4).booleanValue();
        }
        w2.a.h(this.zab, field.getSafeParcelableFieldId(), zArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zan(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, double d4) {
        zaG(field);
        w2.a.r(this.zab, field.getSafeParcelableFieldId(), d4);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zap(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Double> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        double[] dArr = new double[size];
        for (int i4 = 0; i4 < size; i4++) {
            dArr[i4] = arrayList.get(i4).doubleValue();
        }
        w2.a.s(this.zab, field.getSafeParcelableFieldId(), dArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zar(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, float f10) {
        zaG(field);
        w2.a.w(this.zab, field.getSafeParcelableFieldId(), f10);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zat(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Float> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        float[] fArr = new float[size];
        for (int i4 = 0; i4 < size; i4++) {
            fArr[i4] = arrayList.get(i4).floatValue();
        }
        w2.a.x(this.zab, field.getSafeParcelableFieldId(), fArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaw(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Integer> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        int[] iArr = new int[size];
        for (int i4 = 0; i4 < size; i4++) {
            iArr[i4] = arrayList.get(i4).intValue();
        }
        w2.a.G(this.zab, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaz(@NonNull FastJsonResponse.Field<?, ?> field, @NonNull String str, @Nullable ArrayList<Long> arrayList) {
        zaG(field);
        int size = ((ArrayList) u.k(arrayList)).size();
        long[] jArr = new long[size];
        for (int i4 = 0; i4 < size; i4++) {
            jArr[i4] = arrayList.get(i4).longValue();
        }
        w2.a.L(this.zab, field.getSafeParcelableFieldId(), jArr, true);
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, zan zanVar, String str) {
        this.zaa = 1;
        Parcel obtain = Parcel.obtain();
        this.zab = obtain;
        safeParcelable.writeToParcel(obtain, 0);
        this.zac = 1;
        this.zad = (zan) u.k(zanVar);
        this.zae = (String) u.k(str);
        this.zaf = 2;
    }

    public SafeParcelResponse(zan zanVar, String str) {
        this.zaa = 1;
        this.zab = Parcel.obtain();
        this.zac = 0;
        this.zad = (zan) u.k(zanVar);
        this.zae = (String) u.k(str);
        this.zaf = 0;
    }
}
