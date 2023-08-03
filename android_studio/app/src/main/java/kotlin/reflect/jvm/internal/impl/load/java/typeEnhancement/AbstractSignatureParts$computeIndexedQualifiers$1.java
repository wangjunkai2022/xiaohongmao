package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: AbstractSignatureParts.kt */
/* loaded from: classes4.dex */
final class AbstractSignatureParts$computeIndexedQualifiers$1 extends Lambda implements Function1<Integer, JavaTypeQualifiers> {
    final /* synthetic */ JavaTypeQualifiers[] $computedResult;
    final /* synthetic */ TypeEnhancementInfo $predefined;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractSignatureParts$computeIndexedQualifiers$1(TypeEnhancementInfo typeEnhancementInfo, JavaTypeQualifiers[] javaTypeQualifiersArr) {
        super(1);
        this.$predefined = typeEnhancementInfo;
        this.$computedResult = javaTypeQualifiersArr;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ JavaTypeQualifiers invoke(Integer num) {
        return invoke(num.intValue());
    }

    @g
    public final JavaTypeQualifiers invoke(int i4) {
        int lastIndex;
        Map<Integer, JavaTypeQualifiers> map;
        JavaTypeQualifiers javaTypeQualifiers;
        TypeEnhancementInfo typeEnhancementInfo = this.$predefined;
        if (typeEnhancementInfo == null || (map = typeEnhancementInfo.getMap()) == null || (javaTypeQualifiers = map.get(Integer.valueOf(i4))) == null) {
            JavaTypeQualifiers[] javaTypeQualifiersArr = this.$computedResult;
            if (i4 >= 0) {
                lastIndex = ArraysKt___ArraysKt.getLastIndex(javaTypeQualifiersArr);
                if (i4 <= lastIndex) {
                    return javaTypeQualifiersArr[i4];
                }
            }
            return JavaTypeQualifiers.Companion.getNONE();
        }
        return javaTypeQualifiers;
    }
}
