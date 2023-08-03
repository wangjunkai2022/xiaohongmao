package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;
import m8.h;

/* compiled from: ClassLiteralValue.kt */
/* loaded from: classes4.dex */
public final class ClassLiteralValue {
    private final int arrayNestedness;
    @g
    private final ClassId classId;

    public ClassLiteralValue(@g ClassId classId, int i4) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        this.classId = classId;
        this.arrayNestedness = i4;
    }

    @g
    public final ClassId component1() {
        return this.classId;
    }

    public final int component2() {
        return this.arrayNestedness;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ClassLiteralValue) {
            ClassLiteralValue classLiteralValue = (ClassLiteralValue) obj;
            return Intrinsics.areEqual(this.classId, classLiteralValue.classId) && this.arrayNestedness == classLiteralValue.arrayNestedness;
        }
        return false;
    }

    public final int getArrayNestedness() {
        return this.arrayNestedness;
    }

    @g
    public final ClassId getClassId() {
        return this.classId;
    }

    public int hashCode() {
        return (this.classId.hashCode() * 31) + this.arrayNestedness;
    }

    @g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i4 = this.arrayNestedness;
        for (int i10 = 0; i10 < i4; i10++) {
            sb.append("kotlin/Array<");
        }
        sb.append(this.classId);
        int i11 = this.arrayNestedness;
        for (int i12 = 0; i12 < i11; i12++) {
            sb.append(">");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }
}
