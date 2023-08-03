package okio.internal;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import okio.BufferedSource;

/* compiled from: zip.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n"}, d2 = {"", "headerId", "", "dataSize", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes4.dex */
final class ZipKt$readOrSkipLocalHeader$1 extends Lambda implements Function2<Integer, Long, Unit> {
    final /* synthetic */ Ref.ObjectRef<Long> $createdAtMillis;
    final /* synthetic */ Ref.ObjectRef<Long> $lastAccessedAtMillis;
    final /* synthetic */ Ref.ObjectRef<Long> $lastModifiedAtMillis;
    final /* synthetic */ BufferedSource $this_readOrSkipLocalHeader;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ZipKt$readOrSkipLocalHeader$1(BufferedSource bufferedSource, Ref.ObjectRef<Long> objectRef, Ref.ObjectRef<Long> objectRef2, Ref.ObjectRef<Long> objectRef3) {
        super(2);
        this.$this_readOrSkipLocalHeader = bufferedSource;
        this.$lastModifiedAtMillis = objectRef;
        this.$lastAccessedAtMillis = objectRef2;
        this.$createdAtMillis = objectRef3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Integer num, Long l10) {
        invoke(num.intValue(), l10.longValue());
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.Long] */
    /* JADX WARN: Type inference failed for: r10v3, types: [T, java.lang.Long] */
    public final void invoke(int i4, long j4) {
        if (i4 == 21589) {
            if (j4 >= 1) {
                int readByte = this.$this_readOrSkipLocalHeader.readByte() & 255;
                boolean z9 = (readByte & 1) == 1;
                boolean z10 = (readByte & 2) == 2;
                boolean z11 = (readByte & 4) == 4;
                BufferedSource bufferedSource = this.$this_readOrSkipLocalHeader;
                long j10 = z9 ? 5L : 1L;
                if (z10) {
                    j10 += 4;
                }
                if (z11) {
                    j10 += 4;
                }
                if (j4 < j10) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                if (z9) {
                    this.$lastModifiedAtMillis.element = Long.valueOf(bufferedSource.readIntLe() * 1000);
                }
                if (z10) {
                    this.$lastAccessedAtMillis.element = Long.valueOf(this.$this_readOrSkipLocalHeader.readIntLe() * 1000);
                }
                if (z11) {
                    this.$createdAtMillis.element = Long.valueOf(this.$this_readOrSkipLocalHeader.readIntLe() * 1000);
                    return;
                }
                return;
            }
            throw new IOException("bad zip: extended timestamp extra too short");
        }
    }
}
