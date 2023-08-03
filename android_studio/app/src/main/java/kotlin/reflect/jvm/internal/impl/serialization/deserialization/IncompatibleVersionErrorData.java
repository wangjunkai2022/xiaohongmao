package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;
import m8.h;

/* compiled from: IncompatibleVersionErrorData.kt */
/* loaded from: classes4.dex */
public final class IncompatibleVersionErrorData<T> {
    private final T actualVersion;
    @g
    private final ClassId classId;
    private final T expectedVersion;
    @g
    private final String filePath;

    public IncompatibleVersionErrorData(T t9, T t10, @g String filePath, @g ClassId classId) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(classId, "classId");
        this.actualVersion = t9;
        this.expectedVersion = t10;
        this.filePath = filePath;
        this.classId = classId;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IncompatibleVersionErrorData) {
            IncompatibleVersionErrorData incompatibleVersionErrorData = (IncompatibleVersionErrorData) obj;
            return Intrinsics.areEqual(this.actualVersion, incompatibleVersionErrorData.actualVersion) && Intrinsics.areEqual(this.expectedVersion, incompatibleVersionErrorData.expectedVersion) && Intrinsics.areEqual(this.filePath, incompatibleVersionErrorData.filePath) && Intrinsics.areEqual(this.classId, incompatibleVersionErrorData.classId);
        }
        return false;
    }

    public int hashCode() {
        T t9 = this.actualVersion;
        int hashCode = (t9 == null ? 0 : t9.hashCode()) * 31;
        T t10 = this.expectedVersion;
        return ((((hashCode + (t10 != null ? t10.hashCode() : 0)) * 31) + this.filePath.hashCode()) * 31) + this.classId.hashCode();
    }

    @g
    public String toString() {
        return "IncompatibleVersionErrorData(actualVersion=" + this.actualVersion + ", expectedVersion=" + this.expectedVersion + ", filePath=" + this.filePath + ", classId=" + this.classId + ')';
    }
}
