package t4;

import android.graphics.Path;
import java.util.Set;
import java.util.StringTokenizer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: SVGAPathEntity.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0002¨\u0006\u000f"}, d2 = {"Lt4/b;", "", "Landroid/graphics/Path;", "finalPath", "", "method", "Ljava/util/StringTokenizer;", "args", "", "b", "toPath", "a", "originValue", "<init>", "(Ljava/lang/String;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f93841a;

    /* renamed from: b  reason: collision with root package name */
    private Path f93842b;

    public b(@m8.g String str) {
        boolean contains$default;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ",", false, 2, (Object) null);
        this.f93841a = contains$default ? StringsKt__StringsJVMKt.replace$default(str, ",", " ", false, 4, (Object) null) : str;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void b(android.graphics.Path r16, java.lang.String r17, java.util.StringTokenizer r18) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t4.b.b(android.graphics.Path, java.lang.String, java.util.StringTokenizer):void");
    }

    public final void a(@m8.g Path path) {
        Set set;
        Path path2 = this.f93842b;
        if (path2 != null) {
            path.set(path2);
            return;
        }
        Path path3 = new Path();
        StringTokenizer stringTokenizer = new StringTokenizer(this.f93841a, "MLHVCSQRAZmlhvcsqraz", true);
        String str = "";
        while (stringTokenizer.hasMoreTokens()) {
            String segment = stringTokenizer.nextToken();
            Intrinsics.checkExpressionValueIsNotNull(segment, "segment");
            if (!(segment.length() == 0)) {
                set = c.f93843a;
                if (set.contains(segment)) {
                    if (Intrinsics.areEqual(segment, "Z") || Intrinsics.areEqual(segment, "z")) {
                        b(path3, segment, new StringTokenizer("", ""));
                    }
                    str = segment;
                } else {
                    b(path3, str, new StringTokenizer(segment, " "));
                }
            }
        }
        this.f93842b = path3;
        path.set(path3);
    }
}
