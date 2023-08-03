package retrofit2;

import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.Objects;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import r7.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class ParameterHandler<T> {

    /* loaded from: classes5.dex */
    static final class Body<T> extends ParameterHandler<T> {
        private final Converter<T, RequestBody> converter;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93215p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Body(Method method, int i4, Converter<T, RequestBody> converter) {
            this.method = method;
            this.f93215p = i4;
            this.converter = converter;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) {
            if (t9 != null) {
                try {
                    requestBuilder.setBody(this.converter.convert(t9));
                    return;
                } catch (IOException e4) {
                    Method method = this.method;
                    int i4 = this.f93215p;
                    throw Utils.parameterError(method, e4, i4, "Unable to convert " + t9 + " to RequestBody", new Object[0]);
                }
            }
            throw Utils.parameterError(this.method, this.f93215p, "Body parameter value must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class Field<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final String name;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Field(String str, Converter<T, String> converter, boolean z9) {
            Objects.requireNonNull(str, "name == null");
            this.name = str;
            this.valueConverter = converter;
            this.encoded = z9;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) throws IOException {
            String convert;
            if (t9 == null || (convert = this.valueConverter.convert(t9)) == null) {
                return;
            }
            requestBuilder.addFormField(this.name, convert, this.encoded);
        }
    }

    /* loaded from: classes5.dex */
    static final class FieldMap<T> extends ParameterHandler<Map<String, T>> {
        private final boolean encoded;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93216p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FieldMap(Method method, int i4, Converter<T, String> converter, boolean z9) {
            this.method = method;
            this.f93216p = i4;
            this.valueConverter = converter;
            this.encoded = z9;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @h Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @h Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.valueConverter.convert(value);
                            if (convert != null) {
                                requestBuilder.addFormField(key, convert, this.encoded);
                            } else {
                                Method method = this.method;
                                int i4 = this.f93216p;
                                throw Utils.parameterError(method, i4, "Field map value '" + value + "' converted to null by " + this.valueConverter.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.method;
                            int i10 = this.f93216p;
                            throw Utils.parameterError(method2, i10, "Field map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f93216p, "Field map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f93216p, "Field map was null.", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class Header<T> extends ParameterHandler<T> {
        private final String name;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Header(String str, Converter<T, String> converter) {
            Objects.requireNonNull(str, "name == null");
            this.name = str;
            this.valueConverter = converter;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) throws IOException {
            String convert;
            if (t9 == null || (convert = this.valueConverter.convert(t9)) == null) {
                return;
            }
            requestBuilder.addHeader(this.name, convert);
        }
    }

    /* loaded from: classes5.dex */
    static final class HeaderMap<T> extends ParameterHandler<Map<String, T>> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93217p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public HeaderMap(Method method, int i4, Converter<T, String> converter) {
            this.method = method;
            this.f93217p = i4;
            this.valueConverter = converter;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @h Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @h Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            requestBuilder.addHeader(key, this.valueConverter.convert(value));
                        } else {
                            Method method = this.method;
                            int i4 = this.f93217p;
                            throw Utils.parameterError(method, i4, "Header map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f93217p, "Header map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f93217p, "Header map was null.", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class Headers extends ParameterHandler<okhttp3.Headers> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93218p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Headers(Method method, int i4) {
            this.method = method;
            this.f93218p = i4;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.ParameterHandler
        public void apply(RequestBuilder requestBuilder, @h okhttp3.Headers headers) {
            if (headers != null) {
                requestBuilder.addHeaders(headers);
                return;
            }
            throw Utils.parameterError(this.method, this.f93218p, "Headers parameter must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class Part<T> extends ParameterHandler<T> {
        private final Converter<T, RequestBody> converter;
        private final okhttp3.Headers headers;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93219p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Part(Method method, int i4, okhttp3.Headers headers, Converter<T, RequestBody> converter) {
            this.method = method;
            this.f93219p = i4;
            this.headers = headers;
            this.converter = converter;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) {
            if (t9 == null) {
                return;
            }
            try {
                requestBuilder.addPart(this.headers, this.converter.convert(t9));
            } catch (IOException e4) {
                Method method = this.method;
                int i4 = this.f93219p;
                throw Utils.parameterError(method, i4, "Unable to convert " + t9 + " to RequestBody", e4);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class PartMap<T> extends ParameterHandler<Map<String, T>> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93220p;
        private final String transferEncoding;
        private final Converter<T, RequestBody> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PartMap(Method method, int i4, Converter<T, RequestBody> converter, String str) {
            this.method = method;
            this.f93220p = i4;
            this.valueConverter = converter;
            this.transferEncoding = str;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @h Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @h Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            requestBuilder.addPart(okhttp3.Headers.of("Content-Disposition", "form-data; name=\"" + key + "\"", "Content-Transfer-Encoding", this.transferEncoding), this.valueConverter.convert(value));
                        } else {
                            Method method = this.method;
                            int i4 = this.f93220p;
                            throw Utils.parameterError(method, i4, "Part map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f93220p, "Part map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f93220p, "Part map was null.", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class Path<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final Method method;
        private final String name;

        /* renamed from: p  reason: collision with root package name */
        private final int f93221p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Path(Method method, int i4, String str, Converter<T, String> converter, boolean z9) {
            this.method = method;
            this.f93221p = i4;
            Objects.requireNonNull(str, "name == null");
            this.name = str;
            this.valueConverter = converter;
            this.encoded = z9;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) throws IOException {
            if (t9 != null) {
                requestBuilder.addPathParam(this.name, this.valueConverter.convert(t9), this.encoded);
                return;
            }
            Method method = this.method;
            int i4 = this.f93221p;
            throw Utils.parameterError(method, i4, "Path parameter \"" + this.name + "\" value must not be null.", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class Query<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final String name;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Query(String str, Converter<T, String> converter, boolean z9) {
            Objects.requireNonNull(str, "name == null");
            this.name = str;
            this.valueConverter = converter;
            this.encoded = z9;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) throws IOException {
            String convert;
            if (t9 == null || (convert = this.valueConverter.convert(t9)) == null) {
                return;
            }
            requestBuilder.addQueryParam(this.name, convert, this.encoded);
        }
    }

    /* loaded from: classes5.dex */
    static final class QueryMap<T> extends ParameterHandler<Map<String, T>> {
        private final boolean encoded;
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93222p;
        private final Converter<T, String> valueConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public QueryMap(Method method, int i4, Converter<T, String> converter, boolean z9) {
            this.method = method;
            this.f93222p = i4;
            this.valueConverter = converter;
            this.encoded = z9;
        }

        @Override // retrofit2.ParameterHandler
        /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @h Object obj) throws IOException {
            apply(requestBuilder, (Map) ((Map) obj));
        }

        void apply(RequestBuilder requestBuilder, @h Map<String, T> map) throws IOException {
            if (map != null) {
                for (Map.Entry<String, T> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        T value = entry.getValue();
                        if (value != null) {
                            String convert = this.valueConverter.convert(value);
                            if (convert != null) {
                                requestBuilder.addQueryParam(key, convert, this.encoded);
                            } else {
                                Method method = this.method;
                                int i4 = this.f93222p;
                                throw Utils.parameterError(method, i4, "Query map value '" + value + "' converted to null by " + this.valueConverter.getClass().getName() + " for key '" + key + "'.", new Object[0]);
                            }
                        } else {
                            Method method2 = this.method;
                            int i10 = this.f93222p;
                            throw Utils.parameterError(method2, i10, "Query map contained null value for key '" + key + "'.", new Object[0]);
                        }
                    } else {
                        throw Utils.parameterError(this.method, this.f93222p, "Query map contained null key.", new Object[0]);
                    }
                }
                return;
            }
            throw Utils.parameterError(this.method, this.f93222p, "Query map was null", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class QueryName<T> extends ParameterHandler<T> {
        private final boolean encoded;
        private final Converter<T, String> nameConverter;

        /* JADX INFO: Access modifiers changed from: package-private */
        public QueryName(Converter<T, String> converter, boolean z9) {
            this.nameConverter = converter;
            this.encoded = z9;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) throws IOException {
            if (t9 == null) {
                return;
            }
            requestBuilder.addQueryParam(this.nameConverter.convert(t9), null, this.encoded);
        }
    }

    /* loaded from: classes5.dex */
    static final class RawPart extends ParameterHandler<MultipartBody.Part> {
        static final RawPart INSTANCE = new RawPart();

        private RawPart() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // retrofit2.ParameterHandler
        public void apply(RequestBuilder requestBuilder, @h MultipartBody.Part part) {
            if (part != null) {
                requestBuilder.addPart(part);
            }
        }
    }

    /* loaded from: classes5.dex */
    static final class RelativeUrl extends ParameterHandler<Object> {
        private final Method method;

        /* renamed from: p  reason: collision with root package name */
        private final int f93223p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public RelativeUrl(Method method, int i4) {
            this.method = method;
            this.f93223p = i4;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h Object obj) {
            if (obj != null) {
                requestBuilder.setRelativeUrl(obj);
                return;
            }
            throw Utils.parameterError(this.method, this.f93223p, "@Url parameter is null.", new Object[0]);
        }
    }

    /* loaded from: classes5.dex */
    static final class Tag<T> extends ParameterHandler<T> {
        final Class<T> cls;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Tag(Class<T> cls) {
            this.cls = cls;
        }

        @Override // retrofit2.ParameterHandler
        void apply(RequestBuilder requestBuilder, @h T t9) {
            requestBuilder.addTag(this.cls, t9);
        }
    }

    ParameterHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void apply(RequestBuilder requestBuilder, @h T t9) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ParameterHandler<Object> array() {
        return new ParameterHandler<Object>() { // from class: retrofit2.ParameterHandler.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // retrofit2.ParameterHandler
            void apply(RequestBuilder requestBuilder, @h Object obj) throws IOException {
                if (obj == null) {
                    return;
                }
                int length = Array.getLength(obj);
                for (int i4 = 0; i4 < length; i4++) {
                    ParameterHandler.this.apply(requestBuilder, Array.get(obj, i4));
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ParameterHandler<Iterable<T>> iterable() {
        return new ParameterHandler<Iterable<T>>() { // from class: retrofit2.ParameterHandler.1
            @Override // retrofit2.ParameterHandler
            /* bridge */ /* synthetic */ void apply(RequestBuilder requestBuilder, @h Object obj) throws IOException {
                apply(requestBuilder, (Iterable) ((Iterable) obj));
            }

            void apply(RequestBuilder requestBuilder, @h Iterable<T> iterable) throws IOException {
                if (iterable == null) {
                    return;
                }
                for (T t9 : iterable) {
                    ParameterHandler.this.apply(requestBuilder, t9);
                }
            }
        };
    }
}
