package z8;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import m8.g;
import m8.h;

/* compiled from: TypeQualifier.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n¢\u0006\u0004\b\u0014\u0010\u0015J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0013\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\b\u0010\t\u001a\u00020\bH\u0016R\u001b\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001e\u0010\u0010\u001a\u00060\u0002j\u0002`\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lz8/d;", "Lz8/a;", "", "toString", "", "other", "", "equals", "", "hashCode", "Lkotlin/reflect/KClass;", "type", "Lkotlin/reflect/KClass;", "a", "()Lkotlin/reflect/KClass;", "Lorg/koin/core/qualifier/QualifierValue;", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Lkotlin/reflect/KClass;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class d implements a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final KClass<?> f95755a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final String f95756b;

    public d(@g KClass<?> type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f95755a = type;
        this.f95756b = c9.b.a(type);
    }

    @g
    public final KClass<?> a() {
        return this.f95755a;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(d.class), Reflection.getOrCreateKotlinClass(obj.getClass())) && Intrinsics.areEqual(getValue(), ((d) obj).getValue());
    }

    @Override // z8.a
    @g
    public String getValue() {
        return this.f95756b;
    }

    public int hashCode() {
        return getValue().hashCode();
    }

    @g
    public String toString() {
        return "q:'" + getValue() + '\'';
    }
}
