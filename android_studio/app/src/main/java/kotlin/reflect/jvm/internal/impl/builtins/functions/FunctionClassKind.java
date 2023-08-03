package kotlin.reflect.jvm.internal.impl.builtins.functions;

import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;
import m8.h;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum KFunction uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: FunctionClassKind.kt */
/* loaded from: classes4.dex */
public final class FunctionClassKind {
    private static final /* synthetic */ FunctionClassKind[] $VALUES;
    @g
    public static final Companion Companion;
    public static final FunctionClassKind KFunction;
    public static final FunctionClassKind KSuspendFunction;
    @g
    private final String classNamePrefix;
    private final boolean isReflectType;
    private final boolean isSuspendType;
    @g
    private final FqName packageFqName;
    public static final FunctionClassKind Function = new FunctionClassKind("Function", 0, StandardNames.BUILT_INS_PACKAGE_FQ_NAME, "Function", false, false);
    public static final FunctionClassKind SuspendFunction = new FunctionClassKind("SuspendFunction", 1, StandardNames.COROUTINES_PACKAGE_FQ_NAME, "SuspendFunction", true, false);

    /* compiled from: FunctionClassKind.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {

        /* compiled from: FunctionClassKind.kt */
        /* loaded from: classes4.dex */
        public static final class KindWithArity {
            private final int arity;
            @g
            private final FunctionClassKind kind;

            public KindWithArity(@g FunctionClassKind kind, int i4) {
                Intrinsics.checkNotNullParameter(kind, "kind");
                this.kind = kind;
                this.arity = i4;
            }

            @g
            public final FunctionClassKind component1() {
                return this.kind;
            }

            public final int component2() {
                return this.arity;
            }

            public boolean equals(@h Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof KindWithArity) {
                    KindWithArity kindWithArity = (KindWithArity) obj;
                    return this.kind == kindWithArity.kind && this.arity == kindWithArity.arity;
                }
                return false;
            }

            @g
            public final FunctionClassKind getKind() {
                return this.kind;
            }

            public int hashCode() {
                return (this.kind.hashCode() * 31) + this.arity;
            }

            @g
            public String toString() {
                return "KindWithArity(kind=" + this.kind + ", arity=" + this.arity + ')';
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final Integer toInt(String str) {
            if (str.length() == 0) {
                return null;
            }
            int length = str.length();
            int i4 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                int charAt = str.charAt(i10) - '0';
                if (!(charAt >= 0 && charAt < 10)) {
                    return null;
                }
                i4 = (i4 * 10) + charAt;
            }
            return Integer.valueOf(i4);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[LOOP:0: B:3:0x0011->B:13:0x0032, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0030 A[SYNTHETIC] */
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind byClassNamePrefix(@m8.g kotlin.reflect.jvm.internal.impl.name.FqName r9, @m8.g java.lang.String r10) {
            /*
                r8 = this;
                java.lang.String r0 = "packageFqName"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
                java.lang.String r0 = "className"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind[] r0 = kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind.values()
                int r1 = r0.length
                r2 = 0
                r3 = 0
            L11:
                r4 = 0
                if (r3 >= r1) goto L35
                r5 = r0[r3]
                kotlin.reflect.jvm.internal.impl.name.FqName r6 = r5.getPackageFqName()
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r9)
                if (r6 == 0) goto L2d
                java.lang.String r6 = r5.getClassNamePrefix()
                r7 = 2
                boolean r4 = kotlin.text.StringsKt.startsWith$default(r10, r6, r2, r7, r4)
                if (r4 == 0) goto L2d
                r4 = 1
                goto L2e
            L2d:
                r4 = 0
            L2e:
                if (r4 == 0) goto L32
                r4 = r5
                goto L35
            L32:
                int r3 = r3 + 1
                goto L11
            L35:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind.Companion.byClassNamePrefix(kotlin.reflect.jvm.internal.impl.name.FqName, java.lang.String):kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind");
        }

        @JvmStatic
        @h
        public final FunctionClassKind getFunctionalClassKind(@g String className, @g FqName packageFqName) {
            Intrinsics.checkNotNullParameter(className, "className");
            Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
            KindWithArity parseClassName = parseClassName(className, packageFqName);
            if (parseClassName != null) {
                return parseClassName.getKind();
            }
            return null;
        }

        @h
        public final KindWithArity parseClassName(@g String className, @g FqName packageFqName) {
            Intrinsics.checkNotNullParameter(className, "className");
            Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
            FunctionClassKind byClassNamePrefix = byClassNamePrefix(packageFqName, className);
            if (byClassNamePrefix == null) {
                return null;
            }
            String substring = className.substring(byClassNamePrefix.getClassNamePrefix().length());
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
            Integer num = toInt(substring);
            if (num != null) {
                return new KindWithArity(byClassNamePrefix, num.intValue());
            }
            return null;
        }
    }

    private static final /* synthetic */ FunctionClassKind[] $values() {
        return new FunctionClassKind[]{Function, SuspendFunction, KFunction, KSuspendFunction};
    }

    static {
        FqName fqName = StandardNames.KOTLIN_REFLECT_FQ_NAME;
        KFunction = new FunctionClassKind("KFunction", 2, fqName, "KFunction", false, true);
        KSuspendFunction = new FunctionClassKind("KSuspendFunction", 3, fqName, "KSuspendFunction", true, true);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    private FunctionClassKind(String str, int i4, FqName fqName, String str2, boolean z9, boolean z10) {
        this.packageFqName = fqName;
        this.classNamePrefix = str2;
        this.isSuspendType = z9;
        this.isReflectType = z10;
    }

    public static FunctionClassKind valueOf(String str) {
        return (FunctionClassKind) Enum.valueOf(FunctionClassKind.class, str);
    }

    public static FunctionClassKind[] values() {
        return (FunctionClassKind[]) $VALUES.clone();
    }

    @g
    public final String getClassNamePrefix() {
        return this.classNamePrefix;
    }

    @g
    public final FqName getPackageFqName() {
        return this.packageFqName;
    }

    @g
    public final Name numberedClassName(int i4) {
        Name identifier = Name.identifier(this.classNamePrefix + i4);
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(\"$classNamePrefix$arity\")");
        return identifier;
    }
}
