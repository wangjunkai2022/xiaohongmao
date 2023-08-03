package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.n;
import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;

/* loaded from: classes.dex */
public class JsonMappingException extends DatabindException {

    /* renamed from: g  reason: collision with root package name */
    private static final long f14359g = 3;

    /* renamed from: h  reason: collision with root package name */
    static final int f14360h = 1000;

    /* renamed from: e  reason: collision with root package name */
    protected LinkedList<Reference> f14361e;

    /* renamed from: f  reason: collision with root package name */
    protected transient Closeable f14362f;

    @Deprecated
    public JsonMappingException(String str) {
        super(str);
    }

    public static JsonMappingException from(JsonParser jsonParser, String str) {
        return new JsonMappingException(jsonParser, str);
    }

    public static JsonMappingException fromUnexpectedIOE(IOException iOException) {
        return new JsonMappingException((Closeable) null, String.format("Unexpected IOException (of type %s): %s", iOException.getClass().getName(), com.fasterxml.jackson.databind.util.g.q(iOException)));
    }

    public static JsonMappingException wrapWithPath(Throwable th, Object obj, String str) {
        return wrapWithPath(th, new Reference(obj, str));
    }

    protected void a(StringBuilder sb) {
        LinkedList<Reference> linkedList = this.f14361e;
        if (linkedList == null) {
            return;
        }
        Iterator<Reference> it = linkedList.iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append("->");
            }
        }
    }

    protected String b() {
        String message = super.getMessage();
        if (this.f14361e == null) {
            return message;
        }
        StringBuilder sb = message == null ? new StringBuilder() : new StringBuilder(message);
        sb.append(" (through reference chain: ");
        StringBuilder pathReference = getPathReference(sb);
        pathReference.append(')');
        return pathReference.toString();
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return b();
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        return b();
    }

    public List<Reference> getPath() {
        LinkedList<Reference> linkedList = this.f14361e;
        if (linkedList == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(linkedList);
    }

    public String getPathReference() {
        return getPathReference(new StringBuilder()).toString();
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.core.JacksonException
    @n
    public Object getProcessor() {
        return this.f14362f;
    }

    @Override // com.fasterxml.jackson.databind.DatabindException
    public void prependPath(Object obj, String str) {
        prependPath(new Reference(obj, str));
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }

    public JsonMappingException withCause(Throwable th) {
        initCause(th);
        return this;
    }

    /* loaded from: classes.dex */
    public static class Reference implements Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f14363e = 2;

        /* renamed from: a  reason: collision with root package name */
        protected transient Object f14364a;

        /* renamed from: b  reason: collision with root package name */
        protected String f14365b;

        /* renamed from: c  reason: collision with root package name */
        protected int f14366c;

        /* renamed from: d  reason: collision with root package name */
        protected String f14367d;

        protected Reference() {
            this.f14366c = -1;
        }

        void a(String str) {
            this.f14367d = str;
        }

        void b(String str) {
            this.f14365b = str;
        }

        void c(int i4) {
            this.f14366c = i4;
        }

        Object d() {
            getDescription();
            return this;
        }

        public String getDescription() {
            if (this.f14367d == null) {
                StringBuilder sb = new StringBuilder();
                Object obj = this.f14364a;
                if (obj == null) {
                    sb.append("UNKNOWN");
                } else {
                    Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
                    int i4 = 0;
                    while (cls.isArray()) {
                        cls = cls.getComponentType();
                        i4++;
                    }
                    sb.append(cls.getName());
                    while (true) {
                        i4--;
                        if (i4 < 0) {
                            break;
                        }
                        sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                    }
                }
                sb.append('[');
                if (this.f14365b != null) {
                    sb.append('\"');
                    sb.append(this.f14365b);
                    sb.append('\"');
                } else {
                    int i10 = this.f14366c;
                    if (i10 >= 0) {
                        sb.append(i10);
                    } else {
                        sb.append('?');
                    }
                }
                sb.append(']');
                this.f14367d = sb.toString();
            }
            return this.f14367d;
        }

        public String getFieldName() {
            return this.f14365b;
        }

        @n
        public Object getFrom() {
            return this.f14364a;
        }

        public int getIndex() {
            return this.f14366c;
        }

        public String toString() {
            return getDescription();
        }

        public Reference(Object obj) {
            this.f14366c = -1;
            this.f14364a = obj;
        }

        public Reference(Object obj, String str) {
            this.f14366c = -1;
            this.f14364a = obj;
            Objects.requireNonNull(str, "Cannot pass null fieldName");
            this.f14365b = str;
        }

        public Reference(Object obj, int i4) {
            this.f14364a = obj;
            this.f14366c = i4;
        }
    }

    @Deprecated
    public JsonMappingException(String str, Throwable th) {
        super(str, th);
    }

    public static JsonMappingException from(JsonParser jsonParser, String str, Throwable th) {
        return new JsonMappingException(jsonParser, str, th);
    }

    public static JsonMappingException wrapWithPath(Throwable th, Object obj, int i4) {
        return wrapWithPath(th, new Reference(obj, i4));
    }

    public StringBuilder getPathReference(StringBuilder sb) {
        a(sb);
        return sb;
    }

    @Override // com.fasterxml.jackson.databind.DatabindException
    public void prependPath(Object obj, int i4) {
        prependPath(new Reference(obj, i4));
    }

    @Deprecated
    public JsonMappingException(String str, JsonLocation jsonLocation) {
        super(str, jsonLocation);
    }

    public static JsonMappingException from(JsonGenerator jsonGenerator, String str) {
        return new JsonMappingException(jsonGenerator, str, (Throwable) null);
    }

    public static JsonMappingException wrapWithPath(Throwable th, Reference reference) {
        JsonMappingException jsonMappingException;
        if (th instanceof JsonMappingException) {
            jsonMappingException = (JsonMappingException) th;
        } else {
            String q9 = com.fasterxml.jackson.databind.util.g.q(th);
            if (q9 == null || q9.isEmpty()) {
                q9 = "(was " + th.getClass().getName() + ")";
            }
            Closeable closeable = null;
            if (th instanceof JacksonException) {
                Object processor = ((JacksonException) th).getProcessor();
                if (processor instanceof Closeable) {
                    closeable = (Closeable) processor;
                }
            }
            jsonMappingException = new JsonMappingException(closeable, q9, th);
        }
        jsonMappingException.prependPath(reference);
        return jsonMappingException;
    }

    public void prependPath(Reference reference) {
        if (this.f14361e == null) {
            this.f14361e = new LinkedList<>();
        }
        if (this.f14361e.size() < 1000) {
            this.f14361e.addFirst(reference);
        }
    }

    @Deprecated
    public JsonMappingException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }

    public static JsonMappingException from(JsonGenerator jsonGenerator, String str, Throwable th) {
        return new JsonMappingException(jsonGenerator, str, th);
    }

    public JsonMappingException(Closeable closeable, String str) {
        super(str);
        this.f14362f = closeable;
        if (closeable instanceof JsonParser) {
            this.f13723b = ((JsonParser) closeable).W0();
        }
    }

    public static JsonMappingException from(DeserializationContext deserializationContext, String str) {
        return new JsonMappingException(deserializationContext.getParser(), str);
    }

    public static JsonMappingException from(DeserializationContext deserializationContext, String str, Throwable th) {
        return new JsonMappingException(deserializationContext.getParser(), str, th);
    }

    public static JsonMappingException from(l lVar, String str) {
        return new JsonMappingException(lVar.getGenerator(), str);
    }

    public static JsonMappingException from(l lVar, String str, Throwable th) {
        return new JsonMappingException(lVar.getGenerator(), str, th);
    }

    public JsonMappingException(Closeable closeable, String str, Throwable th) {
        super(str, th);
        this.f14362f = closeable;
        if (th instanceof JacksonException) {
            this.f13723b = ((JacksonException) th).getLocation();
        } else if (closeable instanceof JsonParser) {
            this.f13723b = ((JsonParser) closeable).W0();
        }
    }

    public JsonMappingException(Closeable closeable, String str, JsonLocation jsonLocation) {
        super(str, jsonLocation);
        this.f14362f = closeable;
    }
}
