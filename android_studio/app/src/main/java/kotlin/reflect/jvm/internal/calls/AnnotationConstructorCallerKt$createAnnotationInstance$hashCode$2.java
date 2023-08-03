package kotlin.reflect.jvm.internal.calls;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: AnnotationConstructorCaller.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "", "invoke", "()Ljava/lang/Integer;"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
final class AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2 extends Lambda implements Function0<Integer> {
    final /* synthetic */ Map<String, Object> $values;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnnotationConstructorCallerKt$createAnnotationInstance$hashCode$2(Map<String, ? extends Object> map) {
        super(0);
        this.$values = map;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final Integer invoke() {
        int hashCode;
        Iterator<T> it = this.$values.entrySet().iterator();
        int i4 = 0;
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value instanceof boolean[]) {
                hashCode = Arrays.hashCode((boolean[]) value);
            } else if (value instanceof char[]) {
                hashCode = Arrays.hashCode((char[]) value);
            } else if (value instanceof byte[]) {
                hashCode = Arrays.hashCode((byte[]) value);
            } else if (value instanceof short[]) {
                hashCode = Arrays.hashCode((short[]) value);
            } else if (value instanceof int[]) {
                hashCode = Arrays.hashCode((int[]) value);
            } else if (value instanceof float[]) {
                hashCode = Arrays.hashCode((float[]) value);
            } else if (value instanceof long[]) {
                hashCode = Arrays.hashCode((long[]) value);
            } else if (value instanceof double[]) {
                hashCode = Arrays.hashCode((double[]) value);
            } else {
                hashCode = value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode();
            }
            i4 += hashCode ^ (str.hashCode() * 127);
        }
        return Integer.valueOf(i4);
    }
}
