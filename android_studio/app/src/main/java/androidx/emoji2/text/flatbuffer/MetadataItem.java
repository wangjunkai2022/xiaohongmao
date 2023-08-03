package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class MetadataItem extends Table {

    /* loaded from: classes.dex */
    public static final class Vector extends BaseVector {
        public Vector __assign(int i4, int i10, ByteBuffer byteBuffer) {
            __reset(i4, i10, byteBuffer);
            return this;
        }

        public MetadataItem get(int i4) {
            return get(new MetadataItem(), i4);
        }

        public MetadataItem get(MetadataItem metadataItem, int i4) {
            return metadataItem.__assign(Table.__indirect(__element(i4), this.bb), this.bb);
        }
    }

    public static void ValidateVersion() {
        Constants.FLATBUFFERS_1_12_0();
    }

    public static void addCodepoints(FlatBufferBuilder flatBufferBuilder, int i4) {
        flatBufferBuilder.addOffset(6, i4, 0);
    }

    public static void addCompatAdded(FlatBufferBuilder flatBufferBuilder, short s9) {
        flatBufferBuilder.addShort(3, s9, 0);
    }

    public static void addEmojiStyle(FlatBufferBuilder flatBufferBuilder, boolean z9) {
        flatBufferBuilder.addBoolean(1, z9, false);
    }

    public static void addHeight(FlatBufferBuilder flatBufferBuilder, short s9) {
        flatBufferBuilder.addShort(5, s9, 0);
    }

    public static void addId(FlatBufferBuilder flatBufferBuilder, int i4) {
        flatBufferBuilder.addInt(0, i4, 0);
    }

    public static void addSdkAdded(FlatBufferBuilder flatBufferBuilder, short s9) {
        flatBufferBuilder.addShort(2, s9, 0);
    }

    public static void addWidth(FlatBufferBuilder flatBufferBuilder, short s9) {
        flatBufferBuilder.addShort(4, s9, 0);
    }

    public static int createCodepointsVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addInt(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static int createMetadataItem(FlatBufferBuilder flatBufferBuilder, int i4, boolean z9, short s9, short s10, short s11, short s12, int i10) {
        flatBufferBuilder.startTable(7);
        addCodepoints(flatBufferBuilder, i10);
        addId(flatBufferBuilder, i4);
        addHeight(flatBufferBuilder, s12);
        addWidth(flatBufferBuilder, s11);
        addCompatAdded(flatBufferBuilder, s10);
        addSdkAdded(flatBufferBuilder, s9);
        addEmojiStyle(flatBufferBuilder, z9);
        return endMetadataItem(flatBufferBuilder);
    }

    public static int endMetadataItem(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static MetadataItem getRootAsMetadataItem(ByteBuffer byteBuffer) {
        return getRootAsMetadataItem(byteBuffer, new MetadataItem());
    }

    public static void startCodepointsVector(FlatBufferBuilder flatBufferBuilder, int i4) {
        flatBufferBuilder.startVector(4, i4, 4);
    }

    public static void startMetadataItem(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(7);
    }

    public MetadataItem __assign(int i4, ByteBuffer byteBuffer) {
        __init(i4, byteBuffer);
        return this;
    }

    public void __init(int i4, ByteBuffer byteBuffer) {
        __reset(i4, byteBuffer);
    }

    public int codepoints(int i4) {
        int __offset = __offset(16);
        if (__offset != 0) {
            return this.bb.getInt(__vector(__offset) + (i4 * 4));
        }
        return 0;
    }

    public ByteBuffer codepointsAsByteBuffer() {
        return __vector_as_bytebuffer(16, 4);
    }

    public ByteBuffer codepointsInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 16, 4);
    }

    public int codepointsLength() {
        int __offset = __offset(16);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public IntVector codepointsVector() {
        return codepointsVector(new IntVector());
    }

    public short compatAdded() {
        int __offset = __offset(10);
        if (__offset != 0) {
            return this.bb.getShort(__offset + this.bb_pos);
        }
        return (short) 0;
    }

    public boolean emojiStyle() {
        int __offset = __offset(6);
        return (__offset == 0 || this.bb.get(__offset + this.bb_pos) == 0) ? false : true;
    }

    public short height() {
        int __offset = __offset(14);
        if (__offset != 0) {
            return this.bb.getShort(__offset + this.bb_pos);
        }
        return (short) 0;
    }

    public int id() {
        int __offset = __offset(4);
        if (__offset != 0) {
            return this.bb.getInt(__offset + this.bb_pos);
        }
        return 0;
    }

    public short sdkAdded() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return this.bb.getShort(__offset + this.bb_pos);
        }
        return (short) 0;
    }

    public short width() {
        int __offset = __offset(12);
        if (__offset != 0) {
            return this.bb.getShort(__offset + this.bb_pos);
        }
        return (short) 0;
    }

    public static MetadataItem getRootAsMetadataItem(ByteBuffer byteBuffer, MetadataItem metadataItem) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataItem.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public IntVector codepointsVector(IntVector intVector) {
        int __offset = __offset(16);
        if (__offset != 0) {
            return intVector.__assign(__vector(__offset), this.bb);
        }
        return null;
    }
}
