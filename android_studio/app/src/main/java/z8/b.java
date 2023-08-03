package z8;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Qualifier.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a$\u0010\b\u001a\u00020\u0007\"\u000e\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u001a\u000e\u0010\t\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a$\u0010\n\u001a\u00020\u0007\"\u000e\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u001a\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u001a\u0011\u0010\u000e\u001a\u00020\r\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\b\u001a\u0011\u0010\u000f\u001a\u00020\r\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\b\u001a\u0011\u0010\u0010\u001a\u00020\r\"\u0006\b\u0000\u0010\f\u0018\u0001H\u0086\b\"+\u0010\u0013\u001a\u00020\u0007\"\u000e\b\u0000\u0010\u0005*\b\u0012\u0004\u0012\u00028\u00000\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00048F¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012*\n\u0010\u0014\"\u00020\u00002\u00020\u0000¨\u0006\u0015"}, d2 = {"", "name", "Lz8/c;", "e", "", ExifInterface.LONGITUDE_EAST, "enum", "Lz8/a;", "d", "h", "g", "a", ExifInterface.GPS_DIRECTION_TRUE, "Lz8/d;", "f", ContextChain.TAG_INFRA, "b", "c", "(Ljava/lang/Enum;)Lz8/a;", "qualifier", "QualifierValue", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    @g
    public static final c a(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new c(name);
    }

    @g
    public static final <E extends Enum<E>> a c(@g Enum<E> r22) {
        Intrinsics.checkNotNullParameter(r22, "<this>");
        String lowerCase = r22.toString().toLowerCase();
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase()");
        return new c(lowerCase);
    }

    @g
    public static final <E extends Enum<E>> a d(@g Enum<E> r12) {
        Intrinsics.checkNotNullParameter(r12, "enum");
        return c(r12);
    }

    @g
    public static final c e(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new c(name);
    }

    @g
    public static final <E extends Enum<E>> a g(@g Enum<E> r12) {
        Intrinsics.checkNotNullParameter(r12, "enum");
        return c(r12);
    }

    @g
    public static final c h(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new c(name);
    }
}
