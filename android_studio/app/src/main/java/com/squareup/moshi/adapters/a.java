package com.squareup.moshi.adapters;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.g;
import com.squareup.moshi.h;
import com.squareup.moshi.q;
import java.io.IOException;
import java.lang.Enum;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: EnumJsonAdapter.java */
/* loaded from: classes3.dex */
public final class a<T extends Enum<T>> extends h<T> {

    /* renamed from: a  reason: collision with root package name */
    final Class<T> f55555a;

    /* renamed from: b  reason: collision with root package name */
    final String[] f55556b;

    /* renamed from: c  reason: collision with root package name */
    final T[] f55557c;

    /* renamed from: d  reason: collision with root package name */
    final JsonReader.b f55558d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f55559e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    final T f55560f;

    a(Class<T> cls, @r7.h T t9, boolean z9) {
        this.f55555a = cls;
        this.f55560f = t9;
        this.f55559e = z9;
        try {
            T[] enumConstants = cls.getEnumConstants();
            this.f55557c = enumConstants;
            this.f55556b = new String[enumConstants.length];
            int i4 = 0;
            while (true) {
                T[] tArr = this.f55557c;
                if (i4 < tArr.length) {
                    String name = tArr[i4].name();
                    g gVar = (g) cls.getField(name).getAnnotation(g.class);
                    if (gVar != null) {
                        name = gVar.name();
                    }
                    this.f55556b[i4] = name;
                    i4++;
                } else {
                    this.f55558d = JsonReader.b.a(this.f55556b);
                    return;
                }
            }
        } catch (NoSuchFieldException e4) {
            throw new AssertionError("Missing field in " + cls.getName(), e4);
        }
    }

    public static <T extends Enum<T>> a<T> a(Class<T> cls) {
        return new a<>(cls, null, false);
    }

    @Override // com.squareup.moshi.h
    @r7.h
    /* renamed from: b */
    public T fromJson(JsonReader jsonReader) throws IOException {
        int X = jsonReader.X(this.f55558d);
        if (X != -1) {
            return this.f55557c[X];
        }
        String path = jsonReader.getPath();
        if (this.f55559e) {
            if (jsonReader.I() == JsonReader.Token.STRING) {
                jsonReader.l0();
                return this.f55560f;
            }
            throw new JsonDataException("Expected a string but was " + jsonReader.I() + " at path " + path);
        }
        String G = jsonReader.G();
        throw new JsonDataException("Expected one of " + Arrays.asList(this.f55556b) + " but was " + G + " at path " + path);
    }

    @Override // com.squareup.moshi.h
    /* renamed from: c */
    public void toJson(q qVar, T t9) throws IOException {
        Objects.requireNonNull(t9, "value was null! Wrap in .nullSafe() to write nullable values.");
        qVar.l0(this.f55556b[t9.ordinal()]);
    }

    public a<T> d(@r7.h T t9) {
        return new a<>(this.f55555a, t9, true);
    }

    public String toString() {
        return "EnumJsonAdapter(" + this.f55555a.getName() + ")";
    }
}
