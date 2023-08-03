package okio.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;
import okio.FileSystem;
import okio.Path;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ResourceFileSystem.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00010\u0000H\n"}, d2 = {"", "Lkotlin/Pair;", "Lokio/FileSystem;", "Lokio/Path;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public final class ResourceFileSystem$roots$2 extends Lambda implements Function0<List<? extends Pair<? extends FileSystem, ? extends Path>>> {
    final /* synthetic */ ClassLoader $classLoader;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceFileSystem$roots$2(ClassLoader classLoader) {
        super(0);
        this.$classLoader = classLoader;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final List<? extends Pair<? extends FileSystem, ? extends Path>> invoke() {
        return ResourceFileSystem.Companion.toClasspathRoots(this.$classLoader);
    }
}
