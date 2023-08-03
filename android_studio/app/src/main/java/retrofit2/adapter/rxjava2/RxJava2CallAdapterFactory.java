package retrofit2.adapter.rxjava2;

import io.reactivex.a;
import io.reactivex.h0;
import io.reactivex.i0;
import io.reactivex.j;
import io.reactivex.q;
import io.reactivex.z;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import r7.h;
import retrofit2.CallAdapter;
import retrofit2.Response;
import retrofit2.Retrofit;

/* loaded from: classes5.dex */
public final class RxJava2CallAdapterFactory extends CallAdapter.Factory {
    private final boolean isAsync;
    @h
    private final h0 scheduler;

    private RxJava2CallAdapterFactory(@h h0 h0Var, boolean z9) {
        this.scheduler = h0Var;
        this.isAsync = z9;
    }

    public static RxJava2CallAdapterFactory create() {
        return new RxJava2CallAdapterFactory(null, false);
    }

    public static RxJava2CallAdapterFactory createAsync() {
        return new RxJava2CallAdapterFactory(null, true);
    }

    public static RxJava2CallAdapterFactory createWithScheduler(h0 h0Var) {
        Objects.requireNonNull(h0Var, "scheduler == null");
        return new RxJava2CallAdapterFactory(h0Var, false);
    }

    @Override // retrofit2.CallAdapter.Factory
    @h
    public CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        Type type2;
        boolean z9;
        boolean z10;
        Class<?> rawType = CallAdapter.Factory.getRawType(type);
        if (rawType == a.class) {
            return new RxJava2CallAdapter(Void.class, this.scheduler, this.isAsync, false, true, false, false, false, true);
        }
        boolean z11 = rawType == j.class;
        boolean z12 = rawType == i0.class;
        boolean z13 = rawType == q.class;
        if (rawType == z.class || z11 || z12 || z13) {
            if (!(type instanceof ParameterizedType)) {
                String str = !z11 ? !z12 ? z13 ? "Maybe" : "Observable" : "Single" : "Flowable";
                throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
            }
            Type parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) type);
            Class<?> rawType2 = CallAdapter.Factory.getRawType(parameterUpperBound);
            if (rawType2 == Response.class) {
                if (parameterUpperBound instanceof ParameterizedType) {
                    type2 = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound);
                    z9 = false;
                } else {
                    throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
                }
            } else if (rawType2 == Result.class) {
                if (parameterUpperBound instanceof ParameterizedType) {
                    type2 = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound);
                    z9 = true;
                } else {
                    throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
                }
            } else {
                type2 = parameterUpperBound;
                z9 = false;
                z10 = true;
                return new RxJava2CallAdapter(type2, this.scheduler, this.isAsync, z9, z10, z11, z12, z13, false);
            }
            z10 = false;
            return new RxJava2CallAdapter(type2, this.scheduler, this.isAsync, z9, z10, z11, z12, z13, false);
        }
        return null;
    }
}
