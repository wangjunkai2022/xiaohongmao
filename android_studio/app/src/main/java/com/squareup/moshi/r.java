package com.squareup.moshi;

import com.squareup.moshi.h;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KotlinJsonAdapter.kt */
@Deprecated(message = "this moved to avoid a package name conflict in the Java Platform Module System.", replaceWith = @ReplaceWith(expression = "com.squareup.moshi.kotlin.reflect.KotlinJsonAdapterFactory", imports = {}))
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u001b\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ]\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b2\u000e\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00022,\u0010\b\u001a(\u0012\u000e\b\u0001\u0012\n \u0003*\u0004\u0018\u00010\u00060\u0006 \u0003*\u0012\u0012\f\u0012\n \u0003*\u0004\u0018\u00010\u00060\u0006\u0018\u00010\u00070\u00052\u000e\u0010\n\u001a\n \u0003*\u0004\u0018\u00010\t0\tH\u0097\u0001¨\u0006\u000f"}, d2 = {"Lcom/squareup/moshi/r;", "Lcom/squareup/moshi/h$e;", "Ljava/lang/reflect/Type;", "kotlin.jvm.PlatformType", "p0", "", "", "", "p1", "Lcom/squareup/moshi/u;", "p2", "Lcom/squareup/moshi/h;", "create", "<init>", "()V", "reflect"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class r implements h.e {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ v5.b f55687a = new v5.b();

    @Override // com.squareup.moshi.h.e
    @m8.h
    public h<?> create(Type type, Set<? extends Annotation> set, u uVar) {
        v5.b bVar = this.f55687a;
        Intrinsics.checkNotNullExpressionValue(type, "create(...)");
        Intrinsics.checkNotNullExpressionValue(set, "create(...)");
        Intrinsics.checkNotNullExpressionValue(uVar, "create(...)");
        return bVar.create(type, set, uVar);
    }
}
