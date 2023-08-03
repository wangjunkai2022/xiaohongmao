package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import androidx.exifinterface.media.ExifInterface;
import com.fasterxml.jackson.core.e;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.Typography;
import m8.g;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: ClassMapperLite.kt */
/* loaded from: classes4.dex */
public final class ClassMapperLite {
    @g
    public static final ClassMapperLite INSTANCE = new ClassMapperLite();
    @g

    /* renamed from: kotlin  reason: collision with root package name */
    private static final String f84764kotlin;
    @g
    private static final Map<String, String> map;

    static {
        List listOf;
        String joinToString$default;
        List listOf2;
        List<String> listOf3;
        List<String> listOf4;
        List<String> listOf5;
        int i4;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Character[]{'k', 'o', 't', 'l', 'i', 'n'});
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(listOf, "", null, null, 0, null, null, 62, null);
        f84764kotlin = joinToString$default;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Boolean", "Z", "Char", "C", "Byte", "B", "Short", ExifInterface.LATITUDE_SOUTH, "Int", "I", "Float", "F", "Long", "J", "Double", "D"});
        int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(0, listOf2.size() - 1, 2);
        if (progressionLastElement >= 0) {
            int i10 = 0;
            while (true) {
                StringBuilder sb = new StringBuilder();
                String str = f84764kotlin;
                sb.append(str);
                sb.append(e.f13819f);
                sb.append((String) listOf2.get(i10));
                linkedHashMap.put(sb.toString(), listOf2.get(i10 + 1));
                linkedHashMap.put(str + e.f13819f + ((String) listOf2.get(i10)) + "Array", '[' + ((String) listOf2.get(i4)));
                if (i10 == progressionLastElement) {
                    break;
                }
                i10 += 2;
            }
        }
        linkedHashMap.put(f84764kotlin + "/Unit", ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
        m1361map$lambda0$add(linkedHashMap, "Any", "java/lang/Object");
        m1361map$lambda0$add(linkedHashMap, "Nothing", "java/lang/Void");
        m1361map$lambda0$add(linkedHashMap, "Annotation", "java/lang/annotation/Annotation");
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum"});
        for (String str2 : listOf3) {
            m1361map$lambda0$add(linkedHashMap, str2, "java/lang/" + str2);
        }
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Iterator", "Collection", "List", "Set", "Map", "ListIterator"});
        for (String str3 : listOf4) {
            m1361map$lambda0$add(linkedHashMap, "collections/" + str3, "java/util/" + str3);
            m1361map$lambda0$add(linkedHashMap, "collections/Mutable" + str3, "java/util/" + str3);
        }
        m1361map$lambda0$add(linkedHashMap, "collections/Iterable", "java/lang/Iterable");
        m1361map$lambda0$add(linkedHashMap, "collections/MutableIterable", "java/lang/Iterable");
        m1361map$lambda0$add(linkedHashMap, "collections/Map.Entry", "java/util/Map$Entry");
        m1361map$lambda0$add(linkedHashMap, "collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i11 = 0; i11 < 23; i11++) {
            StringBuilder sb2 = new StringBuilder();
            String str4 = f84764kotlin;
            sb2.append(str4);
            sb2.append("/jvm/functions/Function");
            sb2.append(i11);
            m1361map$lambda0$add(linkedHashMap, "Function" + i11, sb2.toString());
            m1361map$lambda0$add(linkedHashMap, "reflect/KFunction" + i11, str4 + "/reflect/KFunction");
        }
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum"});
        for (String str5 : listOf5) {
            m1361map$lambda0$add(linkedHashMap, str5 + ".Companion", f84764kotlin + "/jvm/internal/" + str5 + "CompanionObject");
        }
        map = linkedHashMap;
    }

    private ClassMapperLite() {
    }

    /* renamed from: map$lambda-0$add  reason: not valid java name */
    private static final void m1361map$lambda0$add(Map<String, String> map2, String str, String str2) {
        map2.put(f84764kotlin + e.f13819f + str, Matrix.MATRIX_TYPE_RANDOM_LT + str2 + ';');
    }

    @JvmStatic
    @g
    public static final String mapClass(@g String classId) {
        String replace$default;
        Intrinsics.checkNotNullParameter(classId, "classId");
        String str = map.get(classId);
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(Matrix.MATRIX_TYPE_RANDOM_LT);
            replace$default = StringsKt__StringsJVMKt.replace$default(classId, '.', (char) Typography.dollar, false, 4, (Object) null);
            sb.append(replace$default);
            sb.append(';');
            return sb.toString();
        }
        return str;
    }
}
