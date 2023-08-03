package com.koushikdutta.async.util;

import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;

/* loaded from: classes3.dex */
public class StreamUtility {
    public static void a(Closeable... closeableArr) {
        if (closeableArr == null) {
            return;
        }
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    public static void b(InputStream inputStream, OutputStream outputStream) throws IOException {
        d(Channels.newChannel(inputStream), Channels.newChannel(outputStream));
    }

    public static void c(InputStream inputStream) throws IOException {
        do {
        } while (inputStream.read(new byte[1024]) != -1);
    }

    public static void d(ReadableByteChannel readableByteChannel, WritableByteChannel writableByteChannel) throws IOException {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(16384);
        while (readableByteChannel.read(allocateDirect) != -1) {
            allocateDirect.flip();
            writableByteChannel.write(allocateDirect);
            allocateDirect.compact();
        }
        allocateDirect.flip();
        while (allocateDirect.hasRemaining()) {
            writableByteChannel.write(allocateDirect);
        }
    }

    public static String e(File file) throws IOException {
        DataInputStream dataInputStream;
        byte[] bArr = new byte[(int) file.length()];
        DataInputStream dataInputStream2 = null;
        try {
            dataInputStream = new DataInputStream(h.b.a(new FileInputStream(file), file));
        } catch (Throwable th) {
            th = th;
        }
        try {
            dataInputStream.readFully(bArr);
            a(dataInputStream);
            return new String(bArr);
        } catch (Throwable th2) {
            th = th2;
            dataInputStream2 = dataInputStream;
            a(dataInputStream2);
            throw th;
        }
    }

    public static String f(String str) throws IOException {
        return e(new File(str));
    }

    public static String g(String str) {
        try {
            return e(new File(str));
        } catch (IOException unused) {
            return null;
        }
    }

    public static String h(InputStream inputStream) throws IOException {
        return new String(i(inputStream));
    }

    public static byte[] i(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        byte[] bArr = new byte[1024];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = dataInputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                dataInputStream.close();
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    public static void j(File file, String str) throws IOException {
        file.getParentFile().mkdirs();
        DataOutputStream dataOutputStream = new DataOutputStream(l.b.a(new FileOutputStream(file), file));
        dataOutputStream.write(str.getBytes());
        dataOutputStream.close();
    }

    public static void k(String str, String str2) throws IOException {
        j(new File(str), str2);
    }
}
