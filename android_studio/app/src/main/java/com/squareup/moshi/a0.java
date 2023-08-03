package com.squareup.moshi;

import androidx.exifinterface.media.ExifInterface;
import com.squareup.moshi.u;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;

/* compiled from: -MoshiKotlinExtensions.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001b\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u0001H\u0087\b\u001a#\u0010\u0006\u001a\u00020\u0004\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0087\b\u001a \u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0007¨\u0006\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lcom/squareup/moshi/u;", "Lcom/squareup/moshi/h;", "a", "Lcom/squareup/moshi/u$c;", "adapter", "c", "Lkotlin/reflect/KType;", "ktype", "b", "moshi"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class a0 {
    @ExperimentalStdlibApi
    public static final /* synthetic */ <T> h<T> a(u uVar) {
        Intrinsics.checkNotNullParameter(uVar, "<this>");
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        return b(uVar, null);
    }

    @m8.g
    @ExperimentalStdlibApi
    public static final <T> h<T> b(@m8.g u uVar, @m8.g KType ktype) {
        Intrinsics.checkNotNullParameter(uVar, "<this>");
        Intrinsics.checkNotNullParameter(ktype, "ktype");
        h<T> d4 = uVar.d(TypesJVMKt.getJavaType(ktype));
        if ((d4 instanceof com.squareup.moshi.internal.b) || (d4 instanceof com.squareup.moshi.internal.a)) {
            return d4;
        }
        if (ktype.isMarkedNullable()) {
            h<T> nullSafe = d4.nullSafe();
            Intrinsics.checkNotNullExpressionValue(nullSafe, "{\n    adapter.nullSafe()\n  }");
            return nullSafe;
        }
        h<T> nonNull = d4.nonNull();
        Intrinsics.checkNotNullExpressionValue(nonNull, "{\n    adapter.nonNull()\n  }");
        return nonNull;
    }

    @ExperimentalStdlibApi
    public static final /* synthetic */ <T> u.c c(u.c cVar, h<T> adapter) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.reifiedOperationMarker(6, ExifInterface.GPS_DIRECTION_TRUE);
        u.c c10 = cVar.c(TypesJVMKt.getJavaType((KType) null), adapter);
        Intrinsics.checkNotNullExpressionValue(c10, "add(typeOf<T>().javaType, adapter)");
        return c10;
    }
}
