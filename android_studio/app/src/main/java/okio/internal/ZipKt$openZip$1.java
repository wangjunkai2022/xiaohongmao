package okio.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: zip.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n"}, d2 = {"Lokio/internal/ZipEntry;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes4.dex */
public final class ZipKt$openZip$1 extends Lambda implements Function1<ZipEntry, Boolean> {
    public static final ZipKt$openZip$1 INSTANCE = new ZipKt$openZip$1();

    ZipKt$openZip$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g ZipEntry it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.TRUE;
    }
}
