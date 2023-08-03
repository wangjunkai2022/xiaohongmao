package kotlin.reflect.jvm.internal.impl.name;

import com.fasterxml.jackson.core.e;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: CallableId.kt */
/* loaded from: classes4.dex */
public final class CallableId {
    @g
    private static final Companion Companion = new Companion(null);
    @g
    @Deprecated
    private static final Name LOCAL_NAME;
    @g
    @Deprecated
    private static final FqName PACKAGE_FQ_NAME_FOR_LOCAL;
    @g
    private final Name callableName;
    @h
    private final FqName className;
    @g
    private final FqName packageName;
    @h
    private final FqName pathToLocal;

    /* compiled from: CallableId.kt */
    /* loaded from: classes4.dex */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        Name name = SpecialNames.LOCAL;
        LOCAL_NAME = name;
        FqName fqName = FqName.topLevel(name);
        Intrinsics.checkNotNullExpressionValue(fqName, "topLevel(LOCAL_NAME)");
        PACKAGE_FQ_NAME_FOR_LOCAL = fqName;
    }

    public CallableId(@g FqName packageName, @h FqName fqName, @g Name callableName, @h FqName fqName2) {
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(callableName, "callableName");
        this.packageName = packageName;
        this.className = fqName;
        this.callableName = callableName;
        this.pathToLocal = fqName2;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CallableId) {
            CallableId callableId = (CallableId) obj;
            return Intrinsics.areEqual(this.packageName, callableId.packageName) && Intrinsics.areEqual(this.className, callableId.className) && Intrinsics.areEqual(this.callableName, callableId.callableName) && Intrinsics.areEqual(this.pathToLocal, callableId.pathToLocal);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.packageName.hashCode() * 31;
        FqName fqName = this.className;
        int hashCode2 = (((hashCode + (fqName == null ? 0 : fqName.hashCode())) * 31) + this.callableName.hashCode()) * 31;
        FqName fqName2 = this.pathToLocal;
        return hashCode2 + (fqName2 != null ? fqName2.hashCode() : 0);
    }

    @g
    public String toString() {
        String replace$default;
        StringBuilder sb = new StringBuilder();
        String asString = this.packageName.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "packageName.asString()");
        replace$default = StringsKt__StringsJVMKt.replace$default(asString, '.', (char) e.f13819f, false, 4, (Object) null);
        sb.append(replace$default);
        sb.append("/");
        FqName fqName = this.className;
        if (fqName != null) {
            sb.append(fqName);
            sb.append(".");
        }
        sb.append(this.callableName);
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public /* synthetic */ CallableId(FqName fqName, FqName fqName2, Name name, FqName fqName3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(fqName, fqName2, name, (i4 & 8) != 0 ? null : fqName3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CallableId(@g FqName packageName, @g Name callableName) {
        this(packageName, null, callableName, null, 8, null);
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(callableName, "callableName");
    }
}
