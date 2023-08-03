package retrofit2;

import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import r7.h;

/* loaded from: classes5.dex */
public interface Converter<F, T> {

    /* loaded from: classes5.dex */
    public static abstract class Factory {
        /* JADX INFO: Access modifiers changed from: protected */
        public static Type getParameterUpperBound(int i4, ParameterizedType parameterizedType) {
            return Utils.getParameterUpperBound(i4, parameterizedType);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static Class<?> getRawType(Type type) {
            return Utils.getRawType(type);
        }

        @h
        public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
            return null;
        }

        @h
        public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }

        @h
        public Converter<?, String> stringConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
            return null;
        }
    }

    @h
    T convert(F f10) throws IOException;
}
