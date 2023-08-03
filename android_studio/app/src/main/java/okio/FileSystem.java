package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.d;
import io.sentry.protocol.v;
import java.io.IOException;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import m8.g;
import m8.h;
import okio.Path;
import okio.internal.ResourceFileSystem;
import okio.internal._FileSystemKt;
import org.jsoup.nodes.f;

/* compiled from: FileSystem.kt */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000 42\u00020\u0001:\u00014B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH&J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H&J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0016J\u000e\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0006J\u0018\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\bJ\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0006J\u001a\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\bH&J\u0018\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H&J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0006J\u001a\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH&J\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0006J\u001a\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0016J\u000e\u0010\u0018\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u001a2\u0006\u0010\u0011\u001a\u00020\u0006H&J\u0018\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u001a2\u0006\u0010\u0011\u001a\u00020\u0006H&J\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001d2\u0006\u0010\u0011\u001a\u00020\u0006J \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u001d2\u0006\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u001e\u001a\u00020\bH\u0016J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010\u000e\u001a\u00020\u0006J\u0012\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u0006H&J\u0010\u0010\"\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u000e\u0010$\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020\u0006J$\u0010$\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0007\u001a\u00020\bH&J:\u0010%\u001a\u0002H&\"\u0004\b\u0000\u0010&2\u0006\u0010\u0005\u001a\u00020\u00062\u0017\u0010'\u001a\u0013\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u0002H&0(¢\u0006\u0002\b*H\u0087\bø\u0001\u0000¢\u0006\u0004\b+\u0010,J\u000e\u0010-\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010-\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\bH&J\u0010\u0010\u000b\u001a\u00020.2\u0006\u0010\u0005\u001a\u00020\u0006H&JD\u0010/\u001a\u0002H&\"\u0004\b\u0000\u0010&2\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\b2\u0017\u00100\u001a\u0013\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u0002H&0(¢\u0006\u0002\b*H\u0087\bø\u0001\u0000¢\u0006\u0004\b2\u00103\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00065"}, d2 = {"Lokio/FileSystem;", "", "()V", "appendingSink", "Lokio/Sink;", "file", "Lokio/Path;", "mustExist", "", "atomicMove", "", v.b.f83881a, TypedValues.Attributes.S_TARGET, "canonicalize", "path", "copy", "createDirectories", "dir", "mustCreate", "createDirectory", "createSymlink", "delete", "deleteRecursively", "fileOrDirectory", "exists", "list", "", "listOrNull", "listRecursively", "Lkotlin/sequences/Sequence;", "followSymlinks", d.f25744y, "Lokio/FileMetadata;", "metadataOrNull", "openReadOnly", "Lokio/FileHandle;", "openReadWrite", "read", ExifInterface.GPS_DIRECTION_TRUE, "readerAction", "Lkotlin/Function1;", "Lokio/BufferedSource;", "Lkotlin/ExtensionFunctionType;", "-read", "(Lokio/Path;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "sink", "Lokio/Source;", "write", "writerAction", "Lokio/BufferedSink;", "-write", "(Lokio/Path;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Companion", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class FileSystem {
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final FileSystem RESOURCES;
    @JvmField
    @g
    public static final FileSystem SYSTEM;
    @JvmField
    @g
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    /* compiled from: FileSystem.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lokio/FileSystem$Companion;", "", "()V", "RESOURCES", "Lokio/FileSystem;", f.f91866g, "SYSTEM_TEMPORARY_DIRECTORY", "Lokio/Path;", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* renamed from: -write$default  reason: not valid java name */
    public static /* synthetic */ Object m1713write$default(FileSystem fileSystem, Path file, boolean z9, Function1 writerAction, int i4, Object obj) throws IOException {
        Object obj2;
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(writerAction, "writerAction");
            BufferedSink buffer = Okio.buffer(fileSystem.sink(file, z9));
            Throwable th = null;
            try {
                obj2 = writerAction.invoke(buffer);
            } catch (Throwable th2) {
                obj2 = null;
                th = th2;
            }
            if (buffer != null) {
                try {
                    buffer.close();
                } catch (Throwable th3) {
                    if (th == null) {
                        th = th3;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                    }
                }
            }
            if (th == null) {
                Intrinsics.checkNotNull(obj2);
                return obj2;
            }
            throw th;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        Path.Companion companion = Path.Companion;
        String property = System.getProperty("java.io.tmpdir");
        Intrinsics.checkNotNullExpressionValue(property, "getProperty(\"java.io.tmpdir\")");
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        Intrinsics.checkNotNullExpressionValue(classLoader, "ResourceFileSystem::class.java.classLoader");
        RESOURCES = new ResourceFileSystem(classLoader, false);
    }

    public static /* synthetic */ Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z9, int i4, Object obj) throws IOException {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return fileSystem.appendingSink(path, z9);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z9, int i4, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        fileSystem.createDirectories(path, z9);
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z9, int i4, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        fileSystem.createDirectory(path, z9);
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z9, int i4, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        fileSystem.delete(path, z9);
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z9, int i4, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        fileSystem.deleteRecursively(path, z9);
    }

    public static /* synthetic */ Sequence listRecursively$default(FileSystem fileSystem, Path path, boolean z9, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return fileSystem.listRecursively(path, z9);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z9, boolean z10, int i4, Object obj) throws IOException {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            if ((i4 & 4) != 0) {
                z10 = false;
            }
            return fileSystem.openReadWrite(path, z9, z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
    }

    public static /* synthetic */ Sink sink$default(FileSystem fileSystem, Path path, boolean z9, int i4, Object obj) throws IOException {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return fileSystem.sink(path, z9);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
    }

    @JvmName(name = "-read")
    /* renamed from: -read  reason: not valid java name */
    public final <T> T m1714read(@g Path file, @g Function1<? super BufferedSource, ? extends T> readerAction) throws IOException {
        T t9;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(readerAction, "readerAction");
        BufferedSource buffer = Okio.buffer(source(file));
        Throwable th = null;
        try {
            t9 = readerAction.invoke(buffer);
        } catch (Throwable th2) {
            th = th2;
            t9 = null;
        }
        if (buffer != null) {
            try {
                buffer.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                }
            }
        }
        if (th == null) {
            Intrinsics.checkNotNull(t9);
            return t9;
        }
        throw th;
    }

    @JvmName(name = "-write")
    /* renamed from: -write  reason: not valid java name */
    public final <T> T m1715write(@g Path file, boolean z9, @g Function1<? super BufferedSink, ? extends T> writerAction) throws IOException {
        T t9;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(writerAction, "writerAction");
        BufferedSink buffer = Okio.buffer(sink(file, z9));
        Throwable th = null;
        try {
            t9 = writerAction.invoke(buffer);
        } catch (Throwable th2) {
            t9 = null;
            th = th2;
        }
        if (buffer != null) {
            try {
                buffer.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                }
            }
        }
        if (th == null) {
            Intrinsics.checkNotNull(t9);
            return t9;
        }
        throw th;
    }

    @g
    public final Sink appendingSink(@g Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return appendingSink(file, false);
    }

    @g
    public abstract Sink appendingSink(@g Path path, boolean z9) throws IOException;

    public abstract void atomicMove(@g Path path, @g Path path2) throws IOException;

    @g
    public abstract Path canonicalize(@g Path path) throws IOException;

    public void copy(@g Path source, @g Path target) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        _FileSystemKt.commonCopy(this, source, target);
    }

    public final void createDirectories(@g Path dir, boolean z9) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        _FileSystemKt.commonCreateDirectories(this, dir, z9);
    }

    public final void createDirectory(@g Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        createDirectory(dir, false);
    }

    public abstract void createDirectory(@g Path path, boolean z9) throws IOException;

    public abstract void createSymlink(@g Path path, @g Path path2) throws IOException;

    public final void delete(@g Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        delete(path, false);
    }

    public abstract void delete(@g Path path, boolean z9) throws IOException;

    public void deleteRecursively(@g Path fileOrDirectory, boolean z9) throws IOException {
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        _FileSystemKt.commonDeleteRecursively(this, fileOrDirectory, z9);
    }

    public final boolean exists(@g Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        return _FileSystemKt.commonExists(this, path);
    }

    @g
    public abstract List<Path> list(@g Path path) throws IOException;

    @h
    public abstract List<Path> listOrNull(@g Path path);

    @g
    public Sequence<Path> listRecursively(@g Path dir, boolean z9) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return _FileSystemKt.commonListRecursively(this, dir, z9);
    }

    @g
    public final FileMetadata metadata(@g Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        return _FileSystemKt.commonMetadata(this, path);
    }

    @h
    public abstract FileMetadata metadataOrNull(@g Path path) throws IOException;

    @g
    public abstract FileHandle openReadOnly(@g Path path) throws IOException;

    @g
    public final FileHandle openReadWrite(@g Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return openReadWrite(file, false, false);
    }

    @g
    public abstract FileHandle openReadWrite(@g Path path, boolean z9, boolean z10) throws IOException;

    @g
    public final Sink sink(@g Path file) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        return sink(file, false);
    }

    @g
    public abstract Sink sink(@g Path path, boolean z9) throws IOException;

    @g
    public abstract Source source(@g Path path) throws IOException;

    public final void createDirectories(@g Path dir) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        createDirectories(dir, false);
    }

    public final void deleteRecursively(@g Path fileOrDirectory) throws IOException {
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        deleteRecursively(fileOrDirectory, false);
    }

    @g
    public final Sequence<Path> listRecursively(@g Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        return listRecursively(dir, false);
    }
}
