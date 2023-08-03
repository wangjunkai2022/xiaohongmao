package kotlin.io.path;

import com.google.android.exoplayer2.text.ttml.d;
import java.nio.file.FileSystem;
import java.nio.file.Path;
import java.nio.file.Paths;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt___StringsKt;
import m8.g;

/* compiled from: PathUtils.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lkotlin/io/path/PathRelativizer;", "", "()V", "emptyPath", "Ljava/nio/file/Path;", "kotlin.jvm.PlatformType", "parentPath", "tryRelativeTo", "path", d.X, "kotlin-stdlib-jdk7"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes4.dex */
final class PathRelativizer {
    @g
    public static final PathRelativizer INSTANCE = new PathRelativizer();
    private static final Path emptyPath = Paths.get("", new String[0]);
    private static final Path parentPath = Paths.get("..", new String[0]);

    private PathRelativizer() {
    }

    @g
    public final Path tryRelativeTo(@g Path path, @g Path base) {
        boolean endsWith$default;
        String dropLast;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(base, "base");
        Path normalize = base.normalize();
        Path r9 = path.normalize();
        Path relativize = normalize.relativize(r9);
        int min = Math.min(normalize.getNameCount(), r9.getNameCount());
        for (int i4 = 0; i4 < min; i4++) {
            Path name = normalize.getName(i4);
            Path path2 = parentPath;
            if (!Intrinsics.areEqual(name, path2)) {
                break;
            } else if (!Intrinsics.areEqual(r9.getName(i4), path2)) {
                throw new IllegalArgumentException("Unable to compute relative path");
            }
        }
        if (Intrinsics.areEqual(r9, normalize) || !Intrinsics.areEqual(normalize, emptyPath)) {
            String obj = relativize.toString();
            String separator = relativize.getFileSystem().getSeparator();
            Intrinsics.checkNotNullExpressionValue(separator, "rn.fileSystem.separator");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(obj, separator, false, 2, null);
            if (endsWith$default) {
                FileSystem fileSystem = relativize.getFileSystem();
                dropLast = StringsKt___StringsKt.dropLast(obj, relativize.getFileSystem().getSeparator().length());
                r9 = fileSystem.getPath(dropLast, new String[0]);
            } else {
                r9 = relativize;
            }
        }
        Intrinsics.checkNotNullExpressionValue(r9, "r");
        return r9;
    }
}
