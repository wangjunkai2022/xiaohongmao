package kotlin.io;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: FileTreeWalk.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0007"}, d2 = {"walk", "Lkotlin/io/FileTreeWalk;", "Ljava/io/File;", "direction", "Lkotlin/io/FileWalkDirection;", "walkBottomUp", "walkTopDown", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/io/FilesKt")
/* loaded from: classes4.dex */
class FilesKt__FileTreeWalkKt extends FilesKt__FileReadWriteKt {
    @g
    public static final FileTreeWalk walk(@g File file, @g FileWalkDirection direction) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(direction, "direction");
        return new FileTreeWalk(file, direction);
    }

    public static /* synthetic */ FileTreeWalk walk$default(File file, FileWalkDirection fileWalkDirection, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            fileWalkDirection = FileWalkDirection.TOP_DOWN;
        }
        return walk(file, fileWalkDirection);
    }

    @g
    public static final FileTreeWalk walkBottomUp(@g File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return walk(file, FileWalkDirection.BOTTOM_UP);
    }

    @g
    public static final FileTreeWalk walkTopDown(@g File file) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return walk(file, FileWalkDirection.TOP_DOWN);
    }
}
