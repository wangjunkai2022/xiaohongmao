package w7;

import com.koushikdutta.async.http.cache.ResponseCacheMiddleware;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlinx.android.extensions.CacheImplementation;

/* compiled from: ContainerOptions.kt */
@Retention(RetentionPolicy.RUNTIME)
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0002\u0018\u00002\u00020\u0001B\n\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002R\u0011\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lw7/a;", "", "Lkotlinx/android/extensions/CacheImplementation;", ResponseCacheMiddleware.f44810o, "()Lkotlinx/android/extensions/CacheImplementation;", "kotlin-android-extensions-runtime"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes4.dex */
public @interface a {
    CacheImplementation cache() default CacheImplementation.HASH_MAP;
}
