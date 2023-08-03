package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import r7.h;

/* loaded from: classes5.dex */
public interface CallAdapter<R, T> {

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
        public abstract CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit);
    }

    T adapt(Call<R> call);

    Type responseType();
}
