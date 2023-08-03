package kotlin.reflect.jvm.internal.impl.name;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: FqNamesUtil.kt */
/* loaded from: classes4.dex */
public final class FqNamesUtilKt {

    /* compiled from: FqNamesUtil.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[State.values().length];
            iArr[State.BEGINNING.ordinal()] = 1;
            iArr[State.AFTER_DOT.ordinal()] = 2;
            iArr[State.MIDDLE.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @h
    public static final <V> V findValueForMostSpecificFqname(@g FqName fqName, @g Map<FqName, ? extends V> values) {
        Object next;
        Intrinsics.checkNotNullParameter(fqName, "<this>");
        Intrinsics.checkNotNullParameter(values, "values");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<FqName, ? extends V>> it = values.entrySet().iterator();
        while (true) {
            boolean z9 = true;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<FqName, ? extends V> next2 = it.next();
            FqName key = next2.getKey();
            if (!Intrinsics.areEqual(fqName, key) && !isChildOf(fqName, key)) {
                z9 = false;
            }
            if (z9) {
                linkedHashMap.put(next2.getKey(), next2.getValue());
            }
        }
        if (!(!linkedHashMap.isEmpty())) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            return null;
        }
        Iterator it2 = linkedHashMap.entrySet().iterator();
        if (it2.hasNext()) {
            next = it2.next();
            if (it2.hasNext()) {
                int length = tail((FqName) ((Map.Entry) next).getKey(), fqName).asString().length();
                do {
                    Object next3 = it2.next();
                    int length2 = tail((FqName) ((Map.Entry) next3).getKey(), fqName).asString().length();
                    if (length > length2) {
                        next = next3;
                        length = length2;
                    }
                } while (it2.hasNext());
            }
        } else {
            next = null;
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (V) entry.getValue();
        }
        return null;
    }

    public static final boolean isChildOf(@g FqName fqName, @g FqName packageName) {
        Intrinsics.checkNotNullParameter(fqName, "<this>");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        return Intrinsics.areEqual(parentOrNull(fqName), packageName);
    }

    public static final boolean isSubpackageOf(@g FqName fqName, @g FqName packageName) {
        Intrinsics.checkNotNullParameter(fqName, "<this>");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        if (Intrinsics.areEqual(fqName, packageName) || packageName.isRoot()) {
            return true;
        }
        String asString = fqName.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "this.asString()");
        String asString2 = packageName.asString();
        Intrinsics.checkNotNullExpressionValue(asString2, "packageName.asString()");
        return isSubpackageOf(asString, asString2);
    }

    public static final boolean isValidJavaFqName(@h String str) {
        if (str == null) {
            return false;
        }
        State state = State.BEGINNING;
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            int i10 = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i10 == 1 || i10 == 2) {
                if (!Character.isJavaIdentifierPart(charAt)) {
                    return false;
                }
                state = State.MIDDLE;
            } else if (i10 != 3) {
                continue;
            } else if (charAt == '.') {
                state = State.AFTER_DOT;
            } else if (!Character.isJavaIdentifierPart(charAt)) {
                return false;
            }
        }
        return state != State.AFTER_DOT;
    }

    @h
    public static final FqName parentOrNull(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "<this>");
        if (fqName.isRoot()) {
            return null;
        }
        return fqName.parent();
    }

    @g
    public static final FqName tail(@g FqName fqName, @g FqName prefix) {
        Intrinsics.checkNotNullParameter(fqName, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        if (!isSubpackageOf(fqName, prefix) || prefix.isRoot()) {
            return fqName;
        }
        if (Intrinsics.areEqual(fqName, prefix)) {
            FqName ROOT = FqName.ROOT;
            Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
            return ROOT;
        }
        String asString = fqName.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "asString()");
        String substring = asString.substring(prefix.asString().length() + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return new FqName(substring);
    }

    private static final boolean isSubpackageOf(String str, String str2) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null);
        return startsWith$default && str.charAt(str2.length()) == '.';
    }
}
