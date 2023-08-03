package com.posthog.android;

import android.util.JsonReader;
import android.util.JsonToken;
import android.util.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Cartographer.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    static final b f47456c = new C0397b().b(true).c(false).a();

    /* renamed from: a  reason: collision with root package name */
    private final boolean f47457a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f47458b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Cartographer.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f47459a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f47459a = iArr;
            try {
                iArr[JsonToken.BEGIN_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f47459a[JsonToken.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f47459a[JsonToken.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f47459a[JsonToken.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f47459a[JsonToken.NUMBER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f47459a[JsonToken.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: Cartographer.java */
    /* renamed from: com.posthog.android.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0397b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f47460a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f47461b;

        public b a() {
            return new b(this.f47460a, this.f47461b);
        }

        public C0397b b(boolean z9) {
            this.f47460a = z9;
            return this;
        }

        public C0397b c(boolean z9) {
            this.f47461b = z9;
            return this;
        }
    }

    b(boolean z9, boolean z10) {
        this.f47457a = z9;
        this.f47458b = z10;
    }

    private static void a(Object obj, JsonWriter jsonWriter) throws IOException {
        jsonWriter.beginArray();
        int length = Array.getLength(obj);
        for (int i4 = 0; i4 < length; i4++) {
            k(Array.get(obj, i4), jsonWriter);
        }
        jsonWriter.endArray();
    }

    private static void d(List<?> list, JsonWriter jsonWriter) throws IOException {
        jsonWriter.beginArray();
        Iterator<?> it = list.iterator();
        while (it.hasNext()) {
            k(it.next(), jsonWriter);
        }
        jsonWriter.endArray();
    }

    private static void e(Map<?, ?> map, JsonWriter jsonWriter) throws IOException {
        jsonWriter.beginObject();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            jsonWriter.name(String.valueOf(entry.getKey()));
            k(entry.getValue(), jsonWriter);
        }
        jsonWriter.endObject();
    }

    private static Object f(JsonReader jsonReader) throws IOException {
        JsonToken peek = jsonReader.peek();
        switch (a.f47459a[peek.ordinal()]) {
            case 1:
                return h(jsonReader);
            case 2:
                return g(jsonReader);
            case 3:
                return Boolean.valueOf(jsonReader.nextBoolean());
            case 4:
                jsonReader.nextNull();
                return null;
            case 5:
                return Double.valueOf(jsonReader.nextDouble());
            case 6:
                return jsonReader.nextString();
            default:
                throw new IllegalStateException("Invalid token " + peek);
        }
    }

    private static List<Object> g(JsonReader jsonReader) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            arrayList.add(f(jsonReader));
        }
        jsonReader.endArray();
        return arrayList;
    }

    private static Map<String, Object> h(JsonReader jsonReader) throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            linkedHashMap.put(jsonReader.nextName(), f(jsonReader));
        }
        jsonReader.endObject();
        return linkedHashMap;
    }

    private static void k(Object obj, JsonWriter jsonWriter) throws IOException {
        if (obj == null) {
            jsonWriter.nullValue();
        } else if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
        } else if (obj instanceof Boolean) {
            jsonWriter.value(((Boolean) obj).booleanValue());
        } else if (obj instanceof List) {
            d((List) obj, jsonWriter);
        } else if (obj instanceof Map) {
            e((Map) obj, jsonWriter);
        } else if (obj.getClass().isArray()) {
            a(obj, jsonWriter);
        } else {
            jsonWriter.value(String.valueOf(obj));
        }
    }

    public Map<String, Object> b(Reader reader) throws IOException {
        if (reader != null) {
            JsonReader jsonReader = new JsonReader(reader);
            jsonReader.setLenient(this.f47457a);
            try {
                return h(jsonReader);
            } finally {
                reader.close();
            }
        }
        throw new IllegalArgumentException("reader == null");
    }

    public Map<String, Object> c(String str) throws IOException {
        if (str != null) {
            if (str.length() != 0) {
                return b(new StringReader(str));
            }
            throw new IllegalArgumentException("json empty");
        }
        throw new IllegalArgumentException("json == null");
    }

    public String i(Map<?, ?> map) {
        StringWriter stringWriter = new StringWriter();
        try {
            j(map, stringWriter);
            return stringWriter.toString();
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    public void j(Map<?, ?> map, Writer writer) throws IOException {
        if (map == null) {
            throw new IllegalArgumentException("map == null");
        }
        if (writer != null) {
            JsonWriter jsonWriter = new JsonWriter(writer);
            jsonWriter.setLenient(this.f47457a);
            if (this.f47458b) {
                jsonWriter.setIndent("  ");
            }
            try {
                e(map, jsonWriter);
                return;
            } finally {
                jsonWriter.close();
            }
        }
        throw new IllegalArgumentException("writer == null");
    }
}
