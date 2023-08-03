package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.UShort;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;

/* compiled from: zip.kt */
@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\"\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0017H\u0002\u001a\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0001H\u0002¢\u0006\u0002\u0010\u001b\u001a.\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020 2\u0014\b\u0002\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020#0\"H\u0000\u001a\f\u0010$\u001a\u00020\u0015*\u00020%H\u0000\u001a\f\u0010&\u001a\u00020'*\u00020%H\u0002\u001a.\u0010(\u001a\u00020)*\u00020%2\u0006\u0010*\u001a\u00020\u00012\u0018\u0010+\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020)0,H\u0002\u001a\u0014\u0010-\u001a\u00020.*\u00020%2\u0006\u0010/\u001a\u00020.H\u0000\u001a\u0018\u00100\u001a\u0004\u0018\u00010.*\u00020%2\b\u0010/\u001a\u0004\u0018\u00010.H\u0002\u001a\u0014\u00101\u001a\u00020'*\u00020%2\u0006\u00102\u001a\u00020'H\u0002\u001a\f\u00103\u001a\u00020)*\u00020%H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0018\u0010\u000e\u001a\u00020\u000f*\u00020\u00018BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u00064"}, d2 = {"BIT_FLAG_ENCRYPTED", "", "BIT_FLAG_UNSUPPORTED_MASK", "CENTRAL_FILE_HEADER_SIGNATURE", "COMPRESSION_METHOD_DEFLATED", "COMPRESSION_METHOD_STORED", "END_OF_CENTRAL_DIRECTORY_SIGNATURE", "HEADER_ID_EXTENDED_TIMESTAMP", "HEADER_ID_ZIP64_EXTENDED_INFO", "LOCAL_FILE_HEADER_SIGNATURE", "MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE", "", "ZIP64_EOCD_RECORD_SIGNATURE", "ZIP64_LOCATOR_SIGNATURE", "hex", "", "getHex", "(I)Ljava/lang/String;", "buildIndex", "", "Lokio/Path;", "Lokio/internal/ZipEntry;", "entries", "", "dosDateTimeToEpochMillis", "date", j.f47980a, "(II)Ljava/lang/Long;", "openZip", "Lokio/ZipFileSystem;", "zipPath", "fileSystem", "Lokio/FileSystem;", "predicate", "Lkotlin/Function1;", "", "readEntry", "Lokio/BufferedSource;", "readEocdRecord", "Lokio/internal/EocdRecord;", "readExtra", "", "extraSize", "block", "Lkotlin/Function2;", "readLocalHeader", "Lokio/FileMetadata;", "basicMetadata", "readOrSkipLocalHeader", "readZip64EocdRecord", "regularRecord", "skipLocalHeader", "okio"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ZipKt {
    private static final int BIT_FLAG_ENCRYPTED = 1;
    private static final int BIT_FLAG_UNSUPPORTED_MASK = 1;
    private static final int CENTRAL_FILE_HEADER_SIGNATURE = 33639248;
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;
    private static final int END_OF_CENTRAL_DIRECTORY_SIGNATURE = 101010256;
    private static final int HEADER_ID_EXTENDED_TIMESTAMP = 21589;
    private static final int HEADER_ID_ZIP64_EXTENDED_INFO = 1;
    private static final int LOCAL_FILE_HEADER_SIGNATURE = 67324752;
    private static final long MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE = 4294967295L;
    private static final int ZIP64_EOCD_RECORD_SIGNATURE = 101075792;
    private static final int ZIP64_LOCATOR_SIGNATURE = 117853008;

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        List<ZipEntry> sortedWith;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new Comparator() { // from class: okio.internal.ZipKt$buildIndex$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t9, T t10) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((ZipEntry) t9).getCanonicalPath(), ((ZipEntry) t10).getCanonicalPath());
                return compareValues;
            }
        });
        for (ZipEntry zipEntry : sortedWith) {
            if (((ZipEntry) linkedHashMap.put(zipEntry.getCanonicalPath(), zipEntry)) == null) {
                while (true) {
                    Path parent = zipEntry.getCanonicalPath().parent();
                    if (parent != null) {
                        ZipEntry zipEntry2 = (ZipEntry) linkedHashMap.get(parent);
                        if (zipEntry2 != null) {
                            zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                            break;
                        }
                        ZipEntry zipEntry3 = new ZipEntry(parent, true, null, 0L, 0L, 0L, 0, null, 0L, TypedValues.Position.TYPE_CURVE_FIT, null);
                        linkedHashMap.put(parent, zipEntry3);
                        zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                        zipEntry = zipEntry3;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static final Long dosDateTimeToEpochMillis(int i4, int i10) {
        if (i10 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i4 >> 9) & 127) + 1980, ((i4 >> 5) & 15) - 1, i4 & 31, (i10 >> 11) & 31, (i10 >> 5) & 63, (i10 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final String getHex(int i4) {
        int checkRadix;
        checkRadix = CharsKt__CharJVMKt.checkRadix(16);
        String num = Integer.toString(i4, checkRadix);
        Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return Intrinsics.stringPlus("0x", num);
    }

    @g
    public static final ZipFileSystem openZip(@g Path zipPath, @g FileSystem fileSystem, @g Function1<? super ZipEntry, Boolean> predicate) throws IOException {
        int readIntLe;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FileHandle openReadOnly = fileSystem.openReadOnly(zipPath);
        long j4 = 0;
        try {
            BufferedSource buffer = Okio.buffer(FileHandle.source$default(openReadOnly, 0L, 1, null));
            int readIntLe2 = buffer.readIntLe();
            if (readIntLe2 != LOCAL_FILE_HEADER_SIGNATURE) {
                if (readIntLe2 == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                    throw new IOException("unsupported zip: empty");
                }
                throw new IOException("not a zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe2));
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(buffer, null);
            long size = openReadOnly.size() - 22;
            if (size >= 0) {
                long max = Math.max(size - 65536, 0L);
                while (true) {
                    BufferedSource buffer2 = Okio.buffer(openReadOnly.source(size));
                    if (buffer2.readIntLe() == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                        EocdRecord readEocdRecord = readEocdRecord(buffer2);
                        String readUtf8 = buffer2.readUtf8(readEocdRecord.getCommentByteCount());
                        buffer2.close();
                        long j10 = size - 20;
                        if (j10 > 0) {
                            BufferedSource buffer3 = Okio.buffer(openReadOnly.source(j10));
                            if (buffer3.readIntLe() == ZIP64_LOCATOR_SIGNATURE) {
                                int readIntLe3 = buffer3.readIntLe();
                                long readLongLe = buffer3.readLongLe();
                                if (buffer3.readIntLe() == 1 && readIntLe3 == 0) {
                                    BufferedSource buffer4 = Okio.buffer(openReadOnly.source(readLongLe));
                                    if (buffer4.readIntLe() == ZIP64_EOCD_RECORD_SIGNATURE) {
                                        EocdRecord readZip64EocdRecord = readZip64EocdRecord(buffer4, readEocdRecord);
                                        Unit unit2 = Unit.INSTANCE;
                                        CloseableKt.closeFinally(buffer4, null);
                                        readEocdRecord = readZip64EocdRecord;
                                    } else {
                                        throw new IOException("bad zip: expected " + getHex(ZIP64_EOCD_RECORD_SIGNATURE) + " but was " + getHex(readIntLe));
                                    }
                                } else {
                                    throw new IOException("unsupported zip: spanned");
                                }
                            }
                            Unit unit3 = Unit.INSTANCE;
                            CloseableKt.closeFinally(buffer3, null);
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource buffer5 = Okio.buffer(openReadOnly.source(readEocdRecord.getCentralDirectoryOffset()));
                        long entryCount = readEocdRecord.getEntryCount();
                        if (0 < entryCount) {
                            do {
                                j4++;
                                ZipEntry readEntry = readEntry(buffer5);
                                if (readEntry.getOffset() < readEocdRecord.getCentralDirectoryOffset()) {
                                    if (predicate.invoke(readEntry).booleanValue()) {
                                        arrayList.add(readEntry);
                                    }
                                } else {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                            } while (j4 < entryCount);
                        }
                        Unit unit4 = Unit.INSTANCE;
                        CloseableKt.closeFinally(buffer5, null);
                        ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, buildIndex(arrayList), readUtf8);
                        CloseableKt.closeFinally(openReadOnly, null);
                        return zipFileSystem;
                    }
                    buffer2.close();
                    size--;
                    if (size < max) {
                        throw new IOException("not a zip: end of central directory signature not found");
                    }
                }
            } else {
                throw new IOException(Intrinsics.stringPlus("not a zip: size=", Long.valueOf(openReadOnly.size())));
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(openReadOnly, th);
                throw th2;
            }
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i4, Object obj) throws IOException {
        if ((i4 & 4) != 0) {
            function1 = ZipKt$openZip$1.INSTANCE;
        }
        return openZip(path, fileSystem, function1);
    }

    @g
    public static final ZipEntry readEntry(@g BufferedSource bufferedSource) throws IOException {
        int readIntLe;
        boolean contains$default;
        int i4;
        Long l10;
        long j4;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        if (bufferedSource.readIntLe() == CENTRAL_FILE_HEADER_SIGNATURE) {
            bufferedSource.skip(4L);
            int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
            if ((readShortLe & 1) == 0) {
                int readShortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                Long dosDateTimeToEpochMillis = dosDateTimeToEpochMillis(bufferedSource.readShortLe() & UShort.MAX_VALUE, bufferedSource.readShortLe() & UShort.MAX_VALUE);
                long readIntLe2 = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                Ref.LongRef longRef = new Ref.LongRef();
                longRef.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                Ref.LongRef longRef2 = new Ref.LongRef();
                longRef2.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                int readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe4 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                int readShortLe5 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                bufferedSource.skip(8L);
                Ref.LongRef longRef3 = new Ref.LongRef();
                longRef3.element = bufferedSource.readIntLe() & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
                String readUtf8 = bufferedSource.readUtf8(readShortLe3);
                contains$default = StringsKt__StringsKt.contains$default((CharSequence) readUtf8, (char) 0, false, 2, (Object) null);
                if (!contains$default) {
                    if (longRef2.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j4 = 8 + 0;
                        i4 = readShortLe2;
                        l10 = dosDateTimeToEpochMillis;
                    } else {
                        i4 = readShortLe2;
                        l10 = dosDateTimeToEpochMillis;
                        j4 = 0;
                    }
                    if (longRef.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j4 += 8;
                    }
                    if (longRef3.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                        j4 += 8;
                    }
                    long j10 = j4;
                    Ref.BooleanRef booleanRef = new Ref.BooleanRef();
                    readExtra(bufferedSource, readShortLe4, new ZipKt$readEntry$1(booleanRef, j10, longRef2, bufferedSource, longRef, longRef3));
                    if (j10 > 0 && !booleanRef.element) {
                        throw new IOException("bad zip: zip64 extra required but absent");
                    }
                    String readUtf82 = bufferedSource.readUtf8(readShortLe5);
                    Path resolve = Path.Companion.get$default(Path.Companion, "/", false, 1, (Object) null).resolve(readUtf8);
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(readUtf8, "/", false, 2, null);
                    return new ZipEntry(resolve, endsWith$default, readUtf82, readIntLe2, longRef.element, longRef2.element, i4, l10, longRef3.element);
                }
                throw new IOException("bad zip: filename contains 0x00");
            }
            throw new IOException(Intrinsics.stringPlus("unsupported zip: general purpose bit flag=", getHex(readShortLe)));
        }
        throw new IOException("bad zip: expected " + getHex(CENTRAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe));
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        int readShortLe2 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        long readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
        if (readShortLe3 == (bufferedSource.readShortLe() & UShort.MAX_VALUE) && readShortLe == 0 && readShortLe2 == 0) {
            bufferedSource.skip(4L);
            return new EocdRecord(readShortLe3, MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE & bufferedSource.readIntLe(), bufferedSource.readShortLe() & UShort.MAX_VALUE);
        }
        throw new IOException("unsupported zip: spanned");
    }

    private static final void readExtra(BufferedSource bufferedSource, int i4, Function2<? super Integer, ? super Long, Unit> function2) {
        long j4 = i4;
        while (j4 != 0) {
            if (j4 >= 4) {
                int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                long j10 = j4 - 4;
                if (j10 >= readShortLe2) {
                    bufferedSource.require(readShortLe2);
                    long size = bufferedSource.getBuffer().size();
                    function2.invoke(Integer.valueOf(readShortLe), Long.valueOf(readShortLe2));
                    long size2 = (bufferedSource.getBuffer().size() + readShortLe2) - size;
                    int i10 = (size2 > 0L ? 1 : (size2 == 0L ? 0 : -1));
                    if (i10 < 0) {
                        throw new IOException(Intrinsics.stringPlus("unsupported zip: too many bytes processed for ", Integer.valueOf(readShortLe)));
                    }
                    if (i10 > 0) {
                        bufferedSource.getBuffer().skip(size2);
                    }
                    j4 = j10 - readShortLe2;
                } else {
                    throw new IOException("bad zip: truncated value in extra field");
                }
            } else {
                throw new IOException("bad zip: truncated header in extra field");
            }
        }
    }

    @g
    public static final FileMetadata readLocalHeader(@g BufferedSource bufferedSource, @g FileMetadata basicMetadata) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(basicMetadata, "basicMetadata");
        FileMetadata readOrSkipLocalHeader = readOrSkipLocalHeader(bufferedSource, basicMetadata);
        Intrinsics.checkNotNull(readOrSkipLocalHeader);
        return readOrSkipLocalHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final FileMetadata readOrSkipLocalHeader(BufferedSource bufferedSource, FileMetadata fileMetadata) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = fileMetadata == null ? 0 : fileMetadata.getLastModifiedAtMillis();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        int readIntLe = bufferedSource.readIntLe();
        if (readIntLe == LOCAL_FILE_HEADER_SIGNATURE) {
            bufferedSource.skip(2L);
            int readShortLe = bufferedSource.readShortLe() & UShort.MAX_VALUE;
            if ((readShortLe & 1) == 0) {
                bufferedSource.skip(18L);
                long readShortLe2 = bufferedSource.readShortLe() & WebSocketProtocol.PAYLOAD_SHORT_MAX;
                int readShortLe3 = bufferedSource.readShortLe() & UShort.MAX_VALUE;
                bufferedSource.skip(readShortLe2);
                if (fileMetadata == null) {
                    bufferedSource.skip(readShortLe3);
                    return null;
                }
                readExtra(bufferedSource, readShortLe3, new ZipKt$readOrSkipLocalHeader$1(bufferedSource, objectRef, objectRef2, objectRef3));
                return new FileMetadata(fileMetadata.isRegularFile(), fileMetadata.isDirectory(), null, fileMetadata.getSize(), (Long) objectRef3.element, (Long) objectRef.element, (Long) objectRef2.element, null, 128, null);
            }
            throw new IOException(Intrinsics.stringPlus("unsupported zip: general purpose bit flag=", getHex(readShortLe)));
        }
        throw new IOException("bad zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(readIntLe));
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int readIntLe = bufferedSource.readIntLe();
        int readIntLe2 = bufferedSource.readIntLe();
        long readLongLe = bufferedSource.readLongLe();
        if (readLongLe == bufferedSource.readLongLe() && readIntLe == 0 && readIntLe2 == 0) {
            bufferedSource.skip(8L);
            return new EocdRecord(readLongLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
        }
        throw new IOException("unsupported zip: spanned");
    }

    public static final void skipLocalHeader(@g BufferedSource bufferedSource) {
        Intrinsics.checkNotNullParameter(bufferedSource, "<this>");
        readOrSkipLocalHeader(bufferedSource, null);
    }
}
