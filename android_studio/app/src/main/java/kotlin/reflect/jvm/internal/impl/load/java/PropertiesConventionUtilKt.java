package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;

/* compiled from: propertiesConventionUtil.kt */
/* loaded from: classes4.dex */
public final class PropertiesConventionUtilKt {
    @g
    public static final List<Name> getPropertyNamesCandidatesByAccessorName(@g Name name) {
        List<Name> listOfNotNull;
        Intrinsics.checkNotNullParameter(name, "name");
        String asString = name.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "name.asString()");
        if (JvmAbi.isGetterName(asString)) {
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(propertyNameByGetMethodName(name));
            return listOfNotNull;
        } else if (JvmAbi.isSetterName(asString)) {
            return propertyNamesBySetMethodName(name);
        } else {
            return BuiltinSpecialProperties.INSTANCE.getPropertyNameCandidatesBySpecialGetterName(name);
        }
    }

    @h
    public static final Name propertyNameByGetMethodName(@g Name methodName) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        Name propertyNameFromAccessorMethodName$default = propertyNameFromAccessorMethodName$default(methodName, "get", false, null, 12, null);
        return propertyNameFromAccessorMethodName$default == null ? propertyNameFromAccessorMethodName$default(methodName, "is", false, null, 8, null) : propertyNameFromAccessorMethodName$default;
    }

    @h
    public static final Name propertyNameBySetMethodName(@g Name methodName, boolean z9) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        return propertyNameFromAccessorMethodName$default(methodName, "set", false, z9 ? "is" : null, 4, null);
    }

    private static final Name propertyNameFromAccessorMethodName(Name name, String str, boolean z9, String str2) {
        boolean startsWith$default;
        String removePrefix;
        String removePrefix2;
        if (name.isSpecial()) {
            return null;
        }
        String identifier = name.getIdentifier();
        Intrinsics.checkNotNullExpressionValue(identifier, "methodName.identifier");
        boolean z10 = false;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(identifier, str, false, 2, null);
        if (startsWith$default && identifier.length() != str.length()) {
            char charAt = identifier.charAt(str.length());
            if ('a' <= charAt && charAt < '{') {
                z10 = true;
            }
            if (z10) {
                return null;
            }
            if (str2 != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                removePrefix2 = StringsKt__StringsKt.removePrefix(identifier, (CharSequence) str);
                sb.append(removePrefix2);
                return Name.identifier(sb.toString());
            } else if (z9) {
                removePrefix = StringsKt__StringsKt.removePrefix(identifier, (CharSequence) str);
                String decapitalizeSmartForCompiler = CapitalizeDecapitalizeKt.decapitalizeSmartForCompiler(removePrefix, true);
                if (Name.isValidIdentifier(decapitalizeSmartForCompiler)) {
                    return Name.identifier(decapitalizeSmartForCompiler);
                }
                return null;
            } else {
                return name;
            }
        }
        return null;
    }

    static /* synthetic */ Name propertyNameFromAccessorMethodName$default(Name name, String str, boolean z9, String str2, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            z9 = true;
        }
        if ((i4 & 8) != 0) {
            str2 = null;
        }
        return propertyNameFromAccessorMethodName(name, str, z9, str2);
    }

    @g
    public static final List<Name> propertyNamesBySetMethodName(@g Name methodName) {
        List<Name> listOfNotNull;
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new Name[]{propertyNameBySetMethodName(methodName, false), propertyNameBySetMethodName(methodName, true)});
        return listOfNotNull;
    }
}
