package com.ksy.statlibrary.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes3.dex */
public class GzipUtil {
    public static ByteArrayOutputStream compress(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(str.length());
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        byteArrayOutputStream.close();
        return byteArrayOutputStream;
    }

    public static String decompress(String str) throws IOException {
        byte[] decode = Base64Code.decode(str);
        if (decode.length > 4) {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(decode, 4, decode.length - 4));
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i4 = 0;
            while (i4 != -1) {
                i4 = gZIPInputStream.read();
                if (i4 != -1) {
                    byteArrayOutputStream.write(i4);
                }
            }
            gZIPInputStream.close();
            byteArrayOutputStream.close();
            return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        }
        return "";
    }

    public static String unzip(InputStream inputStream) {
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(inputStream);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = gZIPInputStream.read();
                if (read != -1) {
                    byteArrayOutputStream.write(read);
                } else {
                    return byteArrayOutputStream.toString();
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static String zip(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            PrintWriter printWriter = new PrintWriter(new GZIPOutputStream(byteArrayOutputStream));
            printWriter.write(str);
            printWriter.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        String byteArrayOutputStream2 = byteArrayOutputStream.toString();
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return byteArrayOutputStream2;
    }
}
