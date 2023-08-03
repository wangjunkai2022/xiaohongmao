package okio;

import com.google.android.exoplayer2.text.ttml.d;
import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import okio.internal._PathKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: Path.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 .2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001.B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0000H\u0096\u0002J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\rH\u0087\u0002¢\u0006\u0002\b\"J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0003H\u0087\u0002¢\u0006\u0002\b\"J\u0016\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0087\u0002¢\u0006\u0002\b\"J\u0013\u0010#\u001a\u00020\b2\b\u0010\u001f\u001a\u0004\u0018\u00010$H\u0096\u0002J\b\u0010%\u001a\u00020\u001eH\u0016J\u0006\u0010&\u001a\u00020\u0000J\u000e\u0010'\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0000J\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\r2\b\b\u0002\u0010(\u001a\u00020\bJ\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00032\b\b\u0002\u0010(\u001a\u00020\bJ\u0018\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u00002\b\b\u0002\u0010(\u001a\u00020\bJ\u0006\u0010)\u001a\u00020*J\b\u0010+\u001a\u00020,H\u0007J\b\u0010-\u001a\u00020\rH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\n\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\tR\u0011\u0010\u000b\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\f\u001a\u00020\r8G¢\u0006\u0006\u001a\u0004\b\f\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0006R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u00008G¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00008F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\u00158F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00158F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u0017R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b8G¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001c¨\u0006/"}, d2 = {"Lokio/Path;", "", "bytes", "Lokio/ByteString;", "(Lokio/ByteString;)V", "getBytes$okio", "()Lokio/ByteString;", "isAbsolute", "", "()Z", "isRelative", "isRoot", "name", "", "()Ljava/lang/String;", "nameBytes", "parent", "()Lokio/Path;", "root", "getRoot", "segments", "", "getSegments", "()Ljava/util/List;", "segmentsBytes", "getSegmentsBytes", "volumeLetter", "", "()Ljava/lang/Character;", "compareTo", "", "other", d.f25728q, "child", "resolve", "equals", "", "hashCode", "normalized", "relativeTo", "normalize", "toFile", "Ljava/io/File;", "toNioPath", "Ljava/nio/file/Path;", "toString", "Companion", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Path implements Comparable<Path> {
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final String DIRECTORY_SEPARATOR;
    @g
    private final ByteString bytes;

    /* compiled from: Path.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nJ\u001b\u0010\u0005\u001a\u00020\u0006*\u00020\u000b2\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nJ\u001b\u0010\f\u001a\u00020\u0006*\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lokio/Path$Companion;", "", "()V", "DIRECTORY_SEPARATOR", "", "toOkioPath", "Lokio/Path;", "Ljava/io/File;", "normalize", "", "get", "Ljava/nio/file/Path;", "toPath", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z9, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                z9 = false;
            }
            return companion.get(str, z9);
        }

        @JvmStatic
        @JvmName(name = "get")
        @JvmOverloads
        @g
        public final Path get(@g File file) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            return get$default(this, file, false, 1, (Object) null);
        }

        @JvmStatic
        @JvmName(name = "get")
        @JvmOverloads
        @g
        public final Path get(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return get$default(this, str, false, 1, (Object) null);
        }

        @JvmStatic
        @JvmName(name = "get")
        @JvmOverloads
        @g
        public final Path get(@g String str, boolean z9) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return _PathKt.commonToPath(str, z9);
        }

        @JvmStatic
        @JvmName(name = "get")
        @IgnoreJRERequirement
        @JvmOverloads
        @g
        public final Path get(@g java.nio.file.Path path) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            return get$default(this, path, false, 1, (Object) null);
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z9, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                z9 = false;
            }
            return companion.get(file, z9);
        }

        @JvmStatic
        @JvmName(name = "get")
        @JvmOverloads
        @g
        public final Path get(@g File file, boolean z9) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            String file2 = file.toString();
            Intrinsics.checkNotNullExpressionValue(file2, "toString()");
            return get(file2, z9);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z9, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                z9 = false;
            }
            return companion.get(path, z9);
        }

        @JvmStatic
        @JvmName(name = "get")
        @IgnoreJRERequirement
        @JvmOverloads
        @g
        public final Path get(@g java.nio.file.Path path, boolean z9) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            return get(path.toString(), z9);
        }
    }

    static {
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        DIRECTORY_SEPARATOR = separator;
    }

    public Path(@g ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.bytes = bytes;
    }

    @JvmStatic
    @JvmName(name = "get")
    @JvmOverloads
    @g
    public static final Path get(@g File file) {
        return Companion.get(file);
    }

    @JvmStatic
    @JvmName(name = "get")
    @JvmOverloads
    @g
    public static final Path get(@g File file, boolean z9) {
        return Companion.get(file, z9);
    }

    @JvmStatic
    @JvmName(name = "get")
    @JvmOverloads
    @g
    public static final Path get(@g String str) {
        return Companion.get(str);
    }

    @JvmStatic
    @JvmName(name = "get")
    @JvmOverloads
    @g
    public static final Path get(@g String str, boolean z9) {
        return Companion.get(str, z9);
    }

    @JvmStatic
    @JvmName(name = "get")
    @IgnoreJRERequirement
    @JvmOverloads
    @g
    public static final Path get(@g java.nio.file.Path path) {
        return Companion.get(path);
    }

    @JvmStatic
    @JvmName(name = "get")
    @IgnoreJRERequirement
    @JvmOverloads
    @g
    public static final Path get(@g java.nio.file.Path path, boolean z9) {
        return Companion.get(path, z9);
    }

    public static /* synthetic */ Path resolve$default(Path path, String str, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        return path.resolve(str, z9);
    }

    public boolean equals(@h Object obj) {
        return (obj instanceof Path) && Intrinsics.areEqual(((Path) obj).getBytes$okio(), getBytes$okio());
    }

    @g
    public final ByteString getBytes$okio() {
        return this.bytes;
    }

    @h
    public final Path getRoot() {
        int access$rootLength = _PathKt.access$rootLength(this);
        if (access$rootLength == -1) {
            return null;
        }
        return new Path(getBytes$okio().substring(0, access$rootLength));
    }

    @g
    public final List<String> getSegments() {
        int collectionSizeOrDefault;
        ArrayList<ByteString> arrayList = new ArrayList();
        int access$rootLength = _PathKt.access$rootLength(this);
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < getBytes$okio().size() && getBytes$okio().getByte(access$rootLength) == ((byte) 92)) {
            access$rootLength++;
        }
        int size = getBytes$okio().size();
        if (access$rootLength < size) {
            int i4 = access$rootLength;
            while (true) {
                int i10 = access$rootLength + 1;
                if (getBytes$okio().getByte(access$rootLength) == ((byte) 47) || getBytes$okio().getByte(access$rootLength) == ((byte) 92)) {
                    arrayList.add(getBytes$okio().substring(i4, access$rootLength));
                    i4 = i10;
                }
                if (i10 >= size) {
                    break;
                }
                access$rootLength = i10;
            }
            access$rootLength = i4;
        }
        if (access$rootLength < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(access$rootLength, getBytes$okio().size()));
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (ByteString byteString : arrayList) {
            arrayList2.add(byteString.utf8());
        }
        return arrayList2;
    }

    @g
    public final List<ByteString> getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int access$rootLength = _PathKt.access$rootLength(this);
        if (access$rootLength == -1) {
            access$rootLength = 0;
        } else if (access$rootLength < getBytes$okio().size() && getBytes$okio().getByte(access$rootLength) == ((byte) 92)) {
            access$rootLength++;
        }
        int size = getBytes$okio().size();
        if (access$rootLength < size) {
            int i4 = access$rootLength;
            while (true) {
                int i10 = access$rootLength + 1;
                if (getBytes$okio().getByte(access$rootLength) == ((byte) 47) || getBytes$okio().getByte(access$rootLength) == ((byte) 92)) {
                    arrayList.add(getBytes$okio().substring(i4, access$rootLength));
                    i4 = i10;
                }
                if (i10 >= size) {
                    break;
                }
                access$rootLength = i10;
            }
            access$rootLength = i4;
        }
        if (access$rootLength < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(access$rootLength, getBytes$okio().size()));
        }
        return arrayList;
    }

    public int hashCode() {
        return getBytes$okio().hashCode();
    }

    public final boolean isAbsolute() {
        return _PathKt.access$rootLength(this) != -1;
    }

    public final boolean isRelative() {
        return _PathKt.access$rootLength(this) == -1;
    }

    public final boolean isRoot() {
        return _PathKt.access$rootLength(this) == getBytes$okio().size();
    }

    @g
    @JvmName(name = "name")
    public final String name() {
        return nameBytes().utf8();
    }

    @g
    @JvmName(name = "nameBytes")
    public final ByteString nameBytes() {
        int access$getIndexOfLastSlash = _PathKt.access$getIndexOfLastSlash(this);
        if (access$getIndexOfLastSlash != -1) {
            return ByteString.substring$default(getBytes$okio(), access$getIndexOfLastSlash + 1, 0, 2, null);
        }
        return (volumeLetter() == null || getBytes$okio().size() != 2) ? getBytes$okio() : ByteString.EMPTY;
    }

    @g
    public final Path normalized() {
        return Companion.get(toString(), true);
    }

    @h
    @JvmName(name = "parent")
    public final Path parent() {
        Path path;
        if (Intrinsics.areEqual(getBytes$okio(), _PathKt.access$getDOT$p()) || Intrinsics.areEqual(getBytes$okio(), _PathKt.access$getSLASH$p()) || Intrinsics.areEqual(getBytes$okio(), _PathKt.access$getBACKSLASH$p()) || _PathKt.access$lastSegmentIsDotDot(this)) {
            return null;
        }
        int access$getIndexOfLastSlash = _PathKt.access$getIndexOfLastSlash(this);
        if (access$getIndexOfLastSlash == 2 && volumeLetter() != null) {
            if (getBytes$okio().size() == 3) {
                return null;
            }
            path = new Path(ByteString.substring$default(getBytes$okio(), 0, 3, 1, null));
        } else if (access$getIndexOfLastSlash == 1 && getBytes$okio().startsWith(_PathKt.access$getBACKSLASH$p())) {
            return null;
        } else {
            if (access$getIndexOfLastSlash != -1 || volumeLetter() == null) {
                if (access$getIndexOfLastSlash == -1) {
                    return new Path(_PathKt.access$getDOT$p());
                }
                if (access$getIndexOfLastSlash == 0) {
                    path = new Path(ByteString.substring$default(getBytes$okio(), 0, 1, 1, null));
                } else {
                    return new Path(ByteString.substring$default(getBytes$okio(), 0, access$getIndexOfLastSlash, 1, null));
                }
            } else if (getBytes$okio().size() == 2) {
                return null;
            } else {
                path = new Path(ByteString.substring$default(getBytes$okio(), 0, 2, 1, null));
            }
        }
        return path;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a6 A[LOOP:2: B:31:0x00a6->B:34:0x00b7, LOOP_START, PHI: r5 
      PHI: (r5v2 int) = (r5v1 int), (r5v5 int) binds: [B:30:0x00a4, B:34:0x00b7] A[DONT_GENERATE, DONT_INLINE]] */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final okio.Path relativeTo(@m8.g okio.Path r9) {
        /*
            r8 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            okio.Path r0 = r8.getRoot()
            okio.Path r1 = r9.getRoot()
            boolean r0 = kotlin.jvm.internal.Intrinsics.areEqual(r0, r1)
            java.lang.String r1 = " and "
            if (r0 == 0) goto Ldf
            java.util.List r0 = r8.getSegmentsBytes()
            java.util.List r2 = r9.getSegmentsBytes()
            int r3 = r0.size()
            int r4 = r2.size()
            int r3 = java.lang.Math.min(r3, r4)
            r4 = 0
            r5 = 0
        L2b:
            if (r5 >= r3) goto L3e
            java.lang.Object r6 = r0.get(r5)
            java.lang.Object r7 = r2.get(r5)
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r7)
            if (r6 == 0) goto L3e
            int r5 = r5 + 1
            goto L2b
        L3e:
            r6 = 1
            if (r5 != r3) goto L5d
            okio.ByteString r3 = r8.getBytes$okio()
            int r3 = r3.size()
            okio.ByteString r7 = r9.getBytes$okio()
            int r7 = r7.size()
            if (r3 != r7) goto L5d
            okio.Path$Companion r9 = okio.Path.Companion
            r0 = 0
            java.lang.String r1 = "."
            okio.Path r9 = okio.Path.Companion.get$default(r9, r1, r4, r6, r0)
            goto Lbd
        L5d:
            int r3 = r2.size()
            java.util.List r3 = r2.subList(r5, r3)
            okio.ByteString r7 = okio.internal._PathKt.access$getDOT_DOT$p()
            int r3 = r3.indexOf(r7)
            r7 = -1
            if (r3 != r7) goto L72
            r3 = 1
            goto L73
        L72:
            r3 = 0
        L73:
            if (r3 == 0) goto Lbe
            okio.Buffer r1 = new okio.Buffer
            r1.<init>()
            okio.ByteString r9 = okio.internal._PathKt.access$getSlash(r9)
            if (r9 != 0) goto L8c
            okio.ByteString r9 = okio.internal._PathKt.access$getSlash(r8)
            if (r9 != 0) goto L8c
            java.lang.String r9 = okio.Path.DIRECTORY_SEPARATOR
            okio.ByteString r9 = okio.internal._PathKt.access$toSlash(r9)
        L8c:
            int r2 = r2.size()
            if (r5 >= r2) goto La0
            r3 = r5
        L93:
            int r3 = r3 + r6
            okio.ByteString r7 = okio.internal._PathKt.access$getDOT_DOT$p()
            r1.write(r7)
            r1.write(r9)
            if (r3 < r2) goto L93
        La0:
            int r2 = r0.size()
            if (r5 >= r2) goto Lb9
        La6:
            int r3 = r5 + 1
            java.lang.Object r5 = r0.get(r5)
            okio.ByteString r5 = (okio.ByteString) r5
            r1.write(r5)
            r1.write(r9)
            if (r3 < r2) goto Lb7
            goto Lb9
        Lb7:
            r5 = r3
            goto La6
        Lb9:
            okio.Path r9 = okio.internal._PathKt.toPath(r1, r4)
        Lbd:
            return r9
        Lbe:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Impossible relative path to resolve: "
            r0.append(r2)
            r0.append(r8)
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r0.<init>(r9)
            throw r0
        Ldf:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Paths of different roots cannot be relative to each other: "
            r0.append(r2)
            r0.append(r8)
            r0.append(r1)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r0.<init>(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Path.relativeTo(okio.Path):okio.Path");
    }

    @g
    @JvmName(name = "resolve")
    public final Path resolve(@g Path child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, child, false);
    }

    @g
    public final File toFile() {
        return new File(toString());
    }

    @g
    @IgnoreJRERequirement
    public final java.nio.file.Path toNioPath() {
        java.nio.file.Path path = Paths.get(toString(), new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(toString())");
        return path;
    }

    @g
    public String toString() {
        return getBytes$okio().utf8();
    }

    @h
    @JvmName(name = "volumeLetter")
    public final Character volumeLetter() {
        boolean z9 = false;
        if (ByteString.indexOf$default(getBytes$okio(), _PathKt.access$getSLASH$p(), 0, 2, (Object) null) == -1 && getBytes$okio().size() >= 2 && getBytes$okio().getByte(1) == ((byte) 58)) {
            char c10 = (char) getBytes$okio().getByte(0);
            if (!('a' <= c10 && c10 <= 'z')) {
                if ('A' <= c10 && c10 <= 'Z') {
                    z9 = true;
                }
                if (!z9) {
                    return null;
                }
            }
            return Character.valueOf(c10);
        }
        return null;
    }

    public static /* synthetic */ Path resolve$default(Path path, ByteString byteString, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        return path.resolve(byteString, z9);
    }

    @Override // java.lang.Comparable
    public int compareTo(@g Path other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return getBytes$okio().compareTo(other.getBytes$okio());
    }

    @g
    public final Path resolve(@g Path child, boolean z9) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, child, z9);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        return path.resolve(path2, z9);
    }

    @g
    @JvmName(name = "resolve")
    public final Path resolve(@g String child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), false);
    }

    @g
    @JvmName(name = "resolve")
    public final Path resolve(@g ByteString child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().write(child), false), false);
    }

    @g
    public final Path resolve(@g String child, boolean z9) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), z9);
    }

    @g
    public final Path resolve(@g ByteString child, boolean z9) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().write(child), false), z9);
    }
}
