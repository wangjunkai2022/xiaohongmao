package okio;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import m8.g;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

@Metadata(d1 = {"okio/Okio__JvmOkioKt", "okio/Okio__OkioKt"}, k = 4, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Okio {
    @g
    public static final Sink appendingSink(@g File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.appendingSink(file);
    }

    @g
    public static final FileSystem asResourceFileSystem(@g ClassLoader classLoader) {
        return Okio__JvmOkioKt.asResourceFileSystem(classLoader);
    }

    @g
    @JvmName(name = "blackhole")
    public static final Sink blackhole() {
        return Okio__OkioKt.blackhole();
    }

    @g
    public static final BufferedSink buffer(@g Sink sink) {
        return Okio__OkioKt.buffer(sink);
    }

    @g
    public static final CipherSink cipherSink(@g Sink sink, @g Cipher cipher) {
        return Okio__JvmOkioKt.cipherSink(sink, cipher);
    }

    @g
    public static final CipherSource cipherSource(@g Source source, @g Cipher cipher) {
        return Okio__JvmOkioKt.cipherSource(source, cipher);
    }

    @g
    public static final HashingSink hashingSink(@g Sink sink, @g MessageDigest messageDigest) {
        return Okio__JvmOkioKt.hashingSink(sink, messageDigest);
    }

    @g
    public static final HashingSource hashingSource(@g Source source, @g MessageDigest messageDigest) {
        return Okio__JvmOkioKt.hashingSource(source, messageDigest);
    }

    public static final boolean isAndroidGetsocknameError(@g AssertionError assertionError) {
        return Okio__JvmOkioKt.isAndroidGetsocknameError(assertionError);
    }

    @g
    public static final FileSystem openZip(@g FileSystem fileSystem, @g Path path) throws IOException {
        return Okio__JvmOkioKt.openZip(fileSystem, path);
    }

    @JvmOverloads
    @g
    public static final Sink sink(@g File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.sink(file);
    }

    @g
    public static final Source source(@g File file) throws FileNotFoundException {
        return Okio__JvmOkioKt.source(file);
    }

    public static final <T extends Closeable, R> R use(T t9, @g Function1<? super T, ? extends R> function1) {
        return (R) Okio__OkioKt.use(t9, function1);
    }

    @g
    public static final BufferedSource buffer(@g Source source) {
        return Okio__OkioKt.buffer(source);
    }

    @g
    public static final HashingSink hashingSink(@g Sink sink, @g Mac mac) {
        return Okio__JvmOkioKt.hashingSink(sink, mac);
    }

    @g
    public static final HashingSource hashingSource(@g Source source, @g Mac mac) {
        return Okio__JvmOkioKt.hashingSource(source, mac);
    }

    @JvmOverloads
    @g
    public static final Sink sink(@g File file, boolean z9) throws FileNotFoundException {
        return Okio__JvmOkioKt.sink(file, z9);
    }

    @g
    public static final Source source(@g InputStream inputStream) {
        return Okio__JvmOkioKt.source(inputStream);
    }

    @g
    public static final Sink sink(@g OutputStream outputStream) {
        return Okio__JvmOkioKt.sink(outputStream);
    }

    @g
    public static final Source source(@g Socket socket) throws IOException {
        return Okio__JvmOkioKt.source(socket);
    }

    @g
    public static final Sink sink(@g Socket socket) throws IOException {
        return Okio__JvmOkioKt.sink(socket);
    }

    @g
    @IgnoreJRERequirement
    public static final Source source(@g java.nio.file.Path path, @g OpenOption... openOptionArr) throws IOException {
        return Okio__JvmOkioKt.source(path, openOptionArr);
    }

    @g
    @IgnoreJRERequirement
    public static final Sink sink(@g java.nio.file.Path path, @g OpenOption... openOptionArr) throws IOException {
        return Okio__JvmOkioKt.sink(path, openOptionArr);
    }
}
