package okio;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: ForwardingFileSystem.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\n"}, d2 = {"Lokio/Path;", "it", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes4.dex */
final class ForwardingFileSystem$listRecursively$1 extends Lambda implements Function1<Path, Path> {
    final /* synthetic */ ForwardingFileSystem this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardingFileSystem$listRecursively$1(ForwardingFileSystem forwardingFileSystem) {
        super(1);
        this.this$0 = forwardingFileSystem;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Path invoke(@g Path it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return this.this$0.onPathResult(it, "listRecursively");
    }
}
