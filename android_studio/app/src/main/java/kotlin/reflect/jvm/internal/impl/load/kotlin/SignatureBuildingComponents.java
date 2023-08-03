package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: SignatureBuildingComponents.kt */
/* loaded from: classes4.dex */
public final class SignatureBuildingComponents {
    @g
    public static final SignatureBuildingComponents INSTANCE = new SignatureBuildingComponents();

    private SignatureBuildingComponents() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String escapeClassName(String str) {
        if (str.length() > 1) {
            return Matrix.MATRIX_TYPE_RANDOM_LT + str + ';';
        }
        return str;
    }

    @g
    public final String[] constructors(@g String... signatures) {
        Intrinsics.checkNotNullParameter(signatures, "signatures");
        ArrayList arrayList = new ArrayList(signatures.length);
        for (String str : signatures) {
            arrayList.add("<init>(" + str + ")V");
        }
        Object[] array = arrayList.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    @g
    public final Set<String> inClass(@g String internalName, @g String... signatures) {
        Intrinsics.checkNotNullParameter(internalName, "internalName");
        Intrinsics.checkNotNullParameter(signatures, "signatures");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str : signatures) {
            linkedHashSet.add(internalName + '.' + str);
        }
        return linkedHashSet;
    }

    @g
    public final Set<String> inJavaLang(@g String name, @g String... signatures) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signatures, "signatures");
        return inClass(javaLang(name), (String[]) Arrays.copyOf(signatures, signatures.length));
    }

    @g
    public final Set<String> inJavaUtil(@g String name, @g String... signatures) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signatures, "signatures");
        return inClass(javaUtil(name), (String[]) Arrays.copyOf(signatures, signatures.length));
    }

    @g
    public final String javaFunction(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return "java/util/function/" + name;
    }

    @g
    public final String javaLang(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return "java/lang/" + name;
    }

    @g
    public final String javaUtil(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return "java/util/" + name;
    }

    @g
    public final String jvmDescriptor(@g String name, @g List<String> parameters, @g String ret) {
        String joinToString$default;
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(ret, "ret");
        StringBuilder sb = new StringBuilder();
        sb.append(name);
        sb.append('(');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(parameters, "", null, null, 0, null, SignatureBuildingComponents$jvmDescriptor$1.INSTANCE, 30, null);
        sb.append(joinToString$default);
        sb.append(')');
        sb.append(escapeClassName(ret));
        return sb.toString();
    }

    @g
    public final String signature(@g String internalName, @g String jvmDescriptor) {
        Intrinsics.checkNotNullParameter(internalName, "internalName");
        Intrinsics.checkNotNullParameter(jvmDescriptor, "jvmDescriptor");
        return internalName + '.' + jvmDescriptor;
    }
}
