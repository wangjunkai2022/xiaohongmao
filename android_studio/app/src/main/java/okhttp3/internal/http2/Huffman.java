package okhttp3.internal.http2;

import androidx.recyclerview.widget.ItemTouchHelper;
import com.facebook.imagepipeline.producers.n;
import com.google.common.base.c;
import io.sentry.protocol.v;
import io.sentry.protocol.y;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;

/* compiled from: Huffman.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u001aB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002J\u001e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/http2/Huffman;", "", "()V", "CODES", "", "CODE_BIT_COUNTS", "", "root", "Lokhttp3/internal/http2/Huffman$Node;", "addCode", "", "symbol", "", "code", "codeBitCount", "decode", v.b.f83881a, "Lokio/BufferedSource;", n.f13105s, "", "sink", "Lokio/BufferedSink;", "encode", "Lokio/ByteString;", "encodedLength", "bytes", "Node", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class Huffman {
    private static final int[] CODES;
    private static final byte[] CODE_BIT_COUNTS;
    public static final Huffman INSTANCE;
    private static final Node root;

    static {
        Huffman huffman = new Huffman();
        INSTANCE = huffman;
        CODES = new int[]{8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};
        byte[] bArr = {c.f32108o, c.A, c.F, c.F, c.F, c.F, c.F, c.F, c.F, c.B, c.H, c.F, c.F, c.H, c.F, c.F, c.F, c.F, c.F, c.F, c.F, c.F, c.H, c.F, c.F, c.F, c.F, c.F, c.F, c.F, c.F, c.F, 6, 10, 10, c.f32107n, c.f32108o, 6, 8, c.f32106m, 10, 10, 8, c.f32106m, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, c.f32110q, 6, c.f32107n, 10, c.f32108o, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, c.f32108o, 19, c.f32108o, c.f32109p, 6, c.f32110q, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, c.f32110q, c.f32106m, c.f32109p, c.f32108o, c.F, c.f32117x, c.f32119z, c.f32117x, c.f32117x, c.f32119z, c.f32119z, c.f32119z, c.A, c.f32119z, c.A, c.A, c.A, c.A, c.A, c.B, c.A, c.B, c.B, c.f32119z, c.A, c.B, c.A, c.A, c.A, c.A, c.f32118y, c.f32119z, c.A, c.f32119z, c.A, c.A, c.B, c.f32119z, c.f32118y, c.f32117x, c.f32119z, c.f32119z, c.A, c.A, c.f32118y, c.A, c.f32119z, c.f32119z, c.B, c.f32118y, c.f32119z, c.A, c.A, c.f32118y, c.f32118y, c.f32119z, c.f32118y, c.A, c.f32119z, c.A, c.A, c.f32117x, c.f32119z, c.f32119z, c.f32119z, c.A, c.f32119z, c.f32119z, c.A, c.D, c.D, c.f32117x, 19, c.f32119z, c.A, c.f32119z, c.C, c.D, c.D, c.D, c.E, c.E, c.D, c.B, c.C, 19, c.f32118y, c.D, c.E, c.E, c.D, c.E, c.B, c.f32118y, c.f32118y, c.D, c.D, c.F, c.E, c.E, c.E, c.f32117x, c.B, c.f32117x, c.f32118y, c.f32119z, c.f32118y, c.f32118y, c.A, c.f32119z, c.f32119z, c.C, c.C, c.B, c.B, c.D, c.A, c.D, c.E, c.D, c.D, c.E, c.E, c.E, c.E, c.E, c.F, c.E, c.E, c.E, c.E, c.E, c.D};
        CODE_BIT_COUNTS = bArr;
        root = new Node();
        int length = bArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            huffman.addCode(i4, CODES[i4], CODE_BIT_COUNTS[i4]);
        }
    }

    private Huffman() {
    }

    private final void addCode(int i4, int i10, int i11) {
        Node node = new Node(i4, i11);
        Node node2 = root;
        while (i11 > 8) {
            i11 -= 8;
            int i12 = (i10 >>> i11) & 255;
            Node[] children = node2.getChildren();
            Intrinsics.checkNotNull(children);
            Node node3 = children[i12];
            if (node3 == null) {
                node3 = new Node();
                children[i12] = node3;
            }
            node2 = node3;
        }
        int i13 = 8 - i11;
        int i14 = (i10 << i13) & 255;
        Node[] children2 = node2.getChildren();
        Intrinsics.checkNotNull(children2);
        ArraysKt___ArraysJvmKt.fill(children2, node, i14, (1 << i13) + i14);
    }

    public final void decode(@g BufferedSource source, long j4, @g BufferedSink sink) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        Node node = root;
        int i4 = 0;
        int i10 = 0;
        for (long j10 = 0; j10 < j4; j10++) {
            i4 = (i4 << 8) | Util.and(source.readByte(), 255);
            i10 += 8;
            while (i10 >= 8) {
                int i11 = i10 - 8;
                Node[] children = node.getChildren();
                Intrinsics.checkNotNull(children);
                node = children[(i4 >>> i11) & 255];
                Intrinsics.checkNotNull(node);
                if (node.getChildren() == null) {
                    sink.writeByte(node.getSymbol());
                    i10 -= node.getTerminalBitCount();
                    node = root;
                } else {
                    i10 = i11;
                }
            }
        }
        while (i10 > 0) {
            Node[] children2 = node.getChildren();
            Intrinsics.checkNotNull(children2);
            Node node2 = children2[(i4 << (8 - i10)) & 255];
            Intrinsics.checkNotNull(node2);
            if (node2.getChildren() != null || node2.getTerminalBitCount() > i10) {
                return;
            }
            sink.writeByte(node2.getSymbol());
            i10 -= node2.getTerminalBitCount();
            node = root;
        }
    }

    public final void encode(@g ByteString source, @g BufferedSink sink) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int size = source.size();
        long j4 = 0;
        int i4 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            int and = Util.and(source.getByte(i10), 255);
            int i11 = CODES[and];
            byte b10 = CODE_BIT_COUNTS[and];
            j4 = (j4 << b10) | i11;
            i4 += b10;
            while (i4 >= 8) {
                i4 = (i4 == true ? 1 : 0) - 8;
                sink.writeByte((int) (j4 >> i4));
            }
        }
        if (i4 > 0) {
            sink.writeByte((int) ((j4 << (8 - i4)) | (255 >>> i4)));
        }
    }

    public final int encodedLength(@g ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int size = bytes.size();
        long j4 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            j4 += CODE_BIT_COUNTS[Util.and(bytes.getByte(i4), 255)];
        }
        return (int) ((j4 + 7) >> 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Huffman.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0017\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006R\u001d\u0010\u0007\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0000\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\r¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/http2/Huffman$Node;", "", "()V", "symbol", "", "bits", "(II)V", y.b.f83923k, "", "getChildren", "()[Lokhttp3/internal/http2/Huffman$Node;", "[Lokhttp3/internal/http2/Huffman$Node;", "getSymbol", "()I", "terminalBitCount", "getTerminalBitCount", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public static final class Node {
        @h
        private final Node[] children;
        private final int symbol;
        private final int terminalBitCount;

        public Node() {
            this.children = new Node[256];
            this.symbol = 0;
            this.terminalBitCount = 0;
        }

        @h
        public final Node[] getChildren() {
            return this.children;
        }

        public final int getSymbol() {
            return this.symbol;
        }

        public final int getTerminalBitCount() {
            return this.terminalBitCount;
        }

        public Node(int i4, int i10) {
            this.children = null;
            this.symbol = i4;
            int i11 = i10 & 7;
            this.terminalBitCount = i11 == 0 ? 8 : i11;
        }
    }
}
