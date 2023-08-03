package z8;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: StringQualifier.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0006\u001a\u00060\u0002j\u0002`\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\r\u0010\u0005\u001a\u00060\u0002j\u0002`\u0004HÆ\u0003J\u0017\u0010\u0007\u001a\u00020\u00002\f\b\u0002\u0010\u0006\u001a\u00060\u0002j\u0002`\u0004HÆ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u001e\u0010\u0006\u001a\u00060\u0002j\u0002`\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lz8/c;", "Lz8/a;", "", "toString", "Lorg/koin/core/qualifier/QualifierValue;", "a", "value", "b", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "koin-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class c implements a {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final String f95754a;

    public c(@g String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f95754a = value;
    }

    public static /* synthetic */ c c(c cVar, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = cVar.getValue();
        }
        return cVar.b(str);
    }

    @g
    public final String a() {
        return getValue();
    }

    @g
    public final c b(@g String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return new c(value);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof c) && Intrinsics.areEqual(getValue(), ((c) obj).getValue());
    }

    @Override // z8.a
    @g
    public String getValue() {
        return this.f95754a;
    }

    public int hashCode() {
        return getValue().hashCode();
    }

    @g
    public String toString() {
        return getValue();
    }
}
