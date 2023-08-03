package com.qennnsad.aknkaksd.presentation.ui.base;

import androidx.exifinterface.media.ExifInterface;
import com.qennnsad.aknkaksd.util.o0;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PresenterExt.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a$\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0002\u001a%\u0010\u000e\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u000b\"\u0004\b\u0001\u0010\f*\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "parentObj", "", "Ljava/lang/reflect/Type;", "c", "(Ljava/lang/Object;)[Ljava/lang/reflect/Type;", "", "oridnalParamterizedTypeIndex", "Ljava/lang/Class;", "b", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "P", "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;", "a", "(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;Ljava/lang/Object;)Ljava/lang/Object;", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class r {
    public static final <V, P> P a(@m8.g n nVar, @m8.g Object parentObj) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        Intrinsics.checkNotNullParameter(parentObj, "parentObj");
        return (P) b(parentObj, 1).getConstructor(b(parentObj, 0)).newInstance(nVar);
    }

    private static final <T> Class<T> b(Object obj, int i4) throws Exception {
        Type type = c(obj)[i4];
        Intrinsics.checkNotNull(type, "null cannot be cast to non-null type java.lang.Class<T of com.qennnsad.aknkaksd.presentation.ui.base.PresenterExtKt.getClassFromGeneric>");
        return (Class) type;
    }

    private static final <T> Type[] c(Object obj) {
        try {
            Type genericSuperclass = obj.getClass().getGenericSuperclass();
            Intrinsics.checkNotNull(genericSuperclass, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType");
            Type[] actualTypeArguments = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
            Intrinsics.checkNotNullExpressionValue(actualTypeArguments, "parentObj.javaClass\n    …     .actualTypeArguments");
            return actualTypeArguments;
        } catch (ClassCastException e4) {
            o0.d("PresenterExt", "Most likely, somewhere in your inhetirance chain,there is a class that uses a raw type and not the generic param.See: http://stackoverflow.com/questions/23074446/java-lang-classcastexception-java-lang-class-cannot-be-cast-to-java-lang-reflec for more info", e4);
            throw e4;
        }
    }
}
