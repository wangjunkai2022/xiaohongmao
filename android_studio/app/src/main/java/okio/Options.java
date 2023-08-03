package okio;

import com.qennnsad.aknkaksd.data.repository.f;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;

/* compiled from: Options.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\b\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "byteStrings", "", "trie", "", "([Lokio/ByteString;[I)V", "getByteStrings$okio", "()[Lokio/ByteString;", "[Lokio/ByteString;", f.f47745b, "", "getSize", "()I", "getTrie$okio", "()[I", "get", "index", "Companion", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final ByteString[] byteStrings;
    @g
    private final int[] trie;

    /* compiled from: Options.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lokio/Options$Companion;", "", "()V", "intCount", "", "Lokio/Buffer;", "getIntCount", "(Lokio/Buffer;)J", "buildTrieRecursive", "", "nodeOffset", "node", "byteStringOffset", "", "byteStrings", "", "Lokio/ByteString;", "fromIndex", "toIndex", "indexes", "of", "Lokio/Options;", "", "([Lokio/ByteString;)Lokio/Options;", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void buildTrieRecursive(long j4, Buffer buffer, int i4, List<? extends ByteString> list, int i10, int i11, List<Integer> list2) {
            int i12;
            int i13;
            int i14;
            int i15;
            int i16;
            Buffer buffer2;
            int i17 = i4;
            if (i10 < i11) {
                if (i10 < i11) {
                    int i18 = i10;
                    while (true) {
                        int i19 = i18 + 1;
                        if (!(list.get(i18).size() >= i17)) {
                            throw new IllegalArgumentException("Failed requirement.".toString());
                        }
                        if (i19 >= i11) {
                            break;
                        }
                        i18 = i19;
                    }
                }
                ByteString byteString = list.get(i10);
                ByteString byteString2 = list.get(i11 - 1);
                if (i17 == byteString.size()) {
                    int i20 = i10 + 1;
                    i12 = i20;
                    i13 = list2.get(i10).intValue();
                    byteString = list.get(i20);
                } else {
                    i12 = i10;
                    i13 = -1;
                }
                if (byteString.getByte(i17) != byteString2.getByte(i17)) {
                    int i21 = i12 + 1;
                    int i22 = 1;
                    if (i21 < i11) {
                        while (true) {
                            int i23 = i21 + 1;
                            if (list.get(i21 - 1).getByte(i17) != list.get(i21).getByte(i17)) {
                                i22++;
                            }
                            if (i23 >= i11) {
                                break;
                            }
                            i21 = i23;
                        }
                    }
                    long intCount = j4 + getIntCount(buffer) + 2 + (i22 * 2);
                    buffer.writeInt(i22);
                    buffer.writeInt(i13);
                    if (i12 < i11) {
                        int i24 = i12;
                        while (true) {
                            int i25 = i24 + 1;
                            byte b10 = list.get(i24).getByte(i17);
                            if (i24 == i12 || b10 != list.get(i24 - 1).getByte(i17)) {
                                buffer.writeInt(b10 & 255);
                            }
                            if (i25 >= i11) {
                                break;
                            }
                            i24 = i25;
                        }
                    }
                    Buffer buffer3 = new Buffer();
                    while (i12 < i11) {
                        byte b11 = list.get(i12).getByte(i17);
                        int i26 = i12 + 1;
                        if (i26 < i11) {
                            int i27 = i26;
                            while (true) {
                                int i28 = i27 + 1;
                                if (b11 != list.get(i27).getByte(i17)) {
                                    i15 = i27;
                                    break;
                                } else if (i28 >= i11) {
                                    break;
                                } else {
                                    i27 = i28;
                                }
                            }
                        }
                        i15 = i11;
                        if (i26 == i15 && i17 + 1 == list.get(i12).size()) {
                            buffer.writeInt(list2.get(i12).intValue());
                            i16 = i15;
                            buffer2 = buffer3;
                        } else {
                            buffer.writeInt(((int) (intCount + getIntCount(buffer3))) * (-1));
                            i16 = i15;
                            buffer2 = buffer3;
                            buildTrieRecursive(intCount, buffer3, i17 + 1, list, i12, i15, list2);
                        }
                        buffer3 = buffer2;
                        i12 = i16;
                    }
                    buffer.writeAll(buffer3);
                    return;
                }
                int min = Math.min(byteString.size(), byteString2.size());
                if (i17 < min) {
                    int i29 = i17;
                    i14 = 0;
                    while (true) {
                        int i30 = i29 + 1;
                        if (byteString.getByte(i29) != byteString2.getByte(i29)) {
                            break;
                        }
                        i14++;
                        if (i30 >= min) {
                            break;
                        }
                        i29 = i30;
                    }
                } else {
                    i14 = 0;
                }
                long intCount2 = j4 + getIntCount(buffer) + 2 + i14 + 1;
                buffer.writeInt(-i14);
                buffer.writeInt(i13);
                int i31 = i17 + i14;
                if (i17 < i31) {
                    while (true) {
                        int i32 = i17 + 1;
                        buffer.writeInt(byteString.getByte(i17) & 255);
                        if (i32 >= i31) {
                            break;
                        }
                        i17 = i32;
                    }
                }
                if (i12 + 1 == i11) {
                    if (i31 == list.get(i12).size()) {
                        buffer.writeInt(list2.get(i12).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                Buffer buffer4 = new Buffer();
                buffer.writeInt(((int) (getIntCount(buffer4) + intCount2)) * (-1));
                buildTrieRecursive(intCount2, buffer4, i31, list, i12, i11, list2);
                buffer.writeAll(buffer4);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        static /* synthetic */ void buildTrieRecursive$default(Companion companion, long j4, Buffer buffer, int i4, List list, int i10, int i11, List list2, int i12, Object obj) {
            companion.buildTrieRecursive((i12 & 1) != 0 ? 0L : j4, buffer, (i12 & 4) != 0 ? 0 : i4, list, (i12 & 16) != 0 ? 0 : i10, (i12 & 32) != 0 ? list.size() : i11, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x00e4, code lost:
            continue;
         */
        @kotlin.jvm.JvmStatic
        @m8.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final okio.Options of(@m8.g okio.ByteString... r17) {
            /*
                Method dump skipped, instructions count: 316
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.of(okio.ByteString[]):okio.Options");
        }
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    @JvmStatic
    @g
    public static final Options of(@g ByteString... byteStringArr) {
        return Companion.of(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    @g
    public final ByteString[] getByteStrings$okio() {
        return this.byteStrings;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.byteStrings.length;
    }

    @g
    public final int[] getTrie$okio() {
        return this.trie;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Options) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    @g
    public ByteString get(int i4) {
        return this.byteStrings[i4];
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Options) byteString);
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Options) byteString);
    }
}
