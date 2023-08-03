package okio;

import com.ksyun.media.player.d.d;
import io.sentry.h4;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import io.sentry.protocol.v;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* compiled from: JvmOkio.kt */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\n\u0010\b\u001a\u00020\t*\u00020\n\u001a\n\u0010\u000b\u001a\u00020\f*\u00020\r\u001a\u0012\u0010\u000e\u001a\u00020\u000f*\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u0012\u0010\u0012\u001a\u00020\u0013*\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011\u001a\u0012\u0010\u0015\u001a\u00020\u0016*\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018\u001a\u0012\u0010\u0015\u001a\u00020\u0016*\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a\u001a\u0012\u0010\u001b\u001a\u00020\u001c*\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018\u001a\u0012\u0010\u001b\u001a\u00020\u001c*\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u001a\u001a\u0012\u0010\u001d\u001a\u00020\f*\u00020\f2\u0006\u0010\u001e\u001a\u00020\u001f\u001a\u0016\u0010 \u001a\u00020\t*\u00020\n2\b\b\u0002\u0010!\u001a\u00020\u0004H\u0007\u001a\n\u0010 \u001a\u00020\t*\u00020\"\u001a\n\u0010 \u001a\u00020\t*\u00020#\u001a%\u0010 \u001a\u00020\t*\u00020$2\u0012\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00020'0&\"\u00020'H\u0007¢\u0006\u0002\u0010(\u001a\n\u0010)\u001a\u00020\u0014*\u00020\n\u001a\n\u0010)\u001a\u00020\u0014*\u00020*\u001a\n\u0010)\u001a\u00020\u0014*\u00020#\u001a%\u0010)\u001a\u00020\u0014*\u00020$2\u0012\u0010%\u001a\n\u0012\u0006\b\u0001\u0012\u00020'0&\"\u00020'H\u0007¢\u0006\u0002\u0010+\"\u0016\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001c\u0010\u0003\u001a\u00020\u0004*\u00060\u0005j\u0002`\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0007¨\u0006,"}, d2 = {h4.b.f83285c, "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "isAndroidGetsocknameError", "", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "(Ljava/lang/AssertionError;)Z", "appendingSink", "Lokio/Sink;", "Ljava/io/File;", "asResourceFileSystem", "Lokio/FileSystem;", "Ljava/lang/ClassLoader;", "cipherSink", "Lokio/CipherSink;", "cipher", "Ljavax/crypto/Cipher;", "cipherSource", "Lokio/CipherSource;", "Lokio/Source;", "hashingSink", "Lokio/HashingSink;", "digest", "Ljava/security/MessageDigest;", d.f45440l, "Ljavax/crypto/Mac;", "hashingSource", "Lokio/HashingSource;", "openZip", "zipPath", "Lokio/Path;", "sink", "append", "Ljava/io/OutputStream;", "Ljava/net/Socket;", "Ljava/nio/file/Path;", "options", "", "Ljava/nio/file/OpenOption;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", v.b.f83881a, "Ljava/io/InputStream;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "okio"}, k = 5, mv = {1, 5, 1}, xi = 48, xs = "okio/Okio")
/* loaded from: classes4.dex */
public final /* synthetic */ class Okio__JvmOkioKt {
    private static final Logger logger = Logger.getLogger("okio.Okio");

    @g
    public static final Sink appendingSink(@g File file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Okio.sink(l.b.b(new FileOutputStream(file, true), file, true));
    }

    @g
    public static final FileSystem asResourceFileSystem(@g ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "<this>");
        return new ResourceFileSystem(classLoader, true);
    }

    @g
    public static final CipherSink cipherSink(@g Sink sink, @g Cipher cipher) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSink(Okio.buffer(sink), cipher);
    }

    @g
    public static final CipherSource cipherSource(@g Source source, @g Cipher cipher) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        return new CipherSource(Okio.buffer(source), cipher);
    }

    @g
    public static final HashingSink hashingSink(@g Sink sink, @g Mac mac) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSink(sink, mac);
    }

    @g
    public static final HashingSource hashingSource(@g Source source, @g Mac mac) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(mac, "mac");
        return new HashingSource(source, mac);
    }

    public static final boolean isAndroidGetsocknameError(@g AssertionError assertionError) {
        Intrinsics.checkNotNullParameter(assertionError, "<this>");
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            return message == null ? false : StringsKt__StringsKt.contains$default((CharSequence) message, (CharSequence) "getsockname failed", false, 2, (Object) null);
        }
        return false;
    }

    @g
    public static final FileSystem openZip(@g FileSystem fileSystem, @g Path zipPath) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        return ZipKt.openZip$default(zipPath, fileSystem, null, 4, null);
    }

    @JvmOverloads
    @g
    public static final Sink sink(@g File file) throws FileNotFoundException {
        Sink sink$default;
        Intrinsics.checkNotNullParameter(file, "<this>");
        sink$default = sink$default(file, false, 1, null);
        return sink$default;
    }

    @g
    public static final Sink sink(@g OutputStream outputStream) {
        Intrinsics.checkNotNullParameter(outputStream, "<this>");
        return new OutputStreamSink(outputStream, new Timeout());
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z9, int i4, Object obj) throws FileNotFoundException {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return Okio.sink(file, z9);
    }

    @g
    public static final Source source(@g InputStream inputStream) {
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        return new InputStreamSource(inputStream, new Timeout());
    }

    @g
    public static final HashingSink hashingSink(@g Sink sink, @g MessageDigest digest) {
        Intrinsics.checkNotNullParameter(sink, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSink(sink, digest);
    }

    @g
    public static final HashingSource hashingSource(@g Source source, @g MessageDigest digest) {
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new HashingSource(source, digest);
    }

    @g
    public static final Sink sink(@g Socket socket) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        OutputStream outputStream = socket.getOutputStream();
        Intrinsics.checkNotNullExpressionValue(outputStream, "getOutputStream()");
        return socketAsyncTimeout.sink(new OutputStreamSink(outputStream, socketAsyncTimeout));
    }

    @g
    public static final Source source(@g Socket socket) throws IOException {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        InputStream inputStream = socket.getInputStream();
        Intrinsics.checkNotNullExpressionValue(inputStream, "getInputStream()");
        return socketAsyncTimeout.source(new InputStreamSource(inputStream, socketAsyncTimeout));
    }

    @JvmOverloads
    @g
    public static final Sink sink(@g File file, boolean z9) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return Okio.sink(l.b.b(new FileOutputStream(file, z9), file, z9));
    }

    @g
    public static final Source source(@g File file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "<this>");
        return new InputStreamSource(h.b.a(new FileInputStream(file), file), Timeout.NONE);
    }

    @g
    @IgnoreJRERequirement
    public static final Sink sink(@g java.nio.file.Path path, @g OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        OutputStream newOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(newOutputStream, "newOutputStream(this, *options)");
        return Okio.sink(newOutputStream);
    }

    @g
    @IgnoreJRERequirement
    public static final Source source(@g java.nio.file.Path path, @g OpenOption... options) throws IOException {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        InputStream newInputStream = Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        Intrinsics.checkNotNullExpressionValue(newInputStream, "newInputStream(this, *options)");
        return Okio.source(newInputStream);
    }
}
