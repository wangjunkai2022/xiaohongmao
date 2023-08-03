package com.googlecode.mp4parser.util;

import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

/* compiled from: ChannelHelper.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static ByteBuffer f36973a = ByteBuffer.allocate(0).asReadOnlyBuffer();

    public static int a(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer, int i4) throws IOException {
        int read;
        int i10 = 0;
        do {
            read = readableByteChannel.read(byteBuffer);
            if (-1 == read) {
                break;
            }
            i10 += read;
        } while (i10 != i4);
        if (read != -1) {
            return i10;
        }
        throw new EOFException("End of file. No more boxes.");
    }

    public static void b(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        a(readableByteChannel, byteBuffer, byteBuffer.remaining());
    }
}
