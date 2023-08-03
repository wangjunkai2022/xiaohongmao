package org.bouncycastle.util;

import com.google.android.exoplayer2.extractor.ts.a0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Vector;
import org.bouncycastle.util.encoders.UTF8;

/* loaded from: classes5.dex */
public final class Strings {
    private static String LINE_SEPARATOR;

    /* loaded from: classes5.dex */
    private static class StringListImpl extends ArrayList<String> implements StringList {
        private StringListImpl() {
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public void add(int i4, String str) {
            super.add(i4, (int) str);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean add(String str) {
            return super.add((StringListImpl) str);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List, org.bouncycastle.util.StringList
        public /* bridge */ /* synthetic */ String get(int i4) {
            return (String) super.get(i4);
        }

        @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
        public String set(int i4, String str) {
            return (String) super.set(i4, (int) str);
        }

        @Override // org.bouncycastle.util.StringList
        public String[] toStringArray() {
            int size = size();
            String[] strArr = new String[size];
            for (int i4 = 0; i4 != size; i4++) {
                strArr[i4] = get(i4);
            }
            return strArr;
        }

        @Override // org.bouncycastle.util.StringList
        public String[] toStringArray(int i4, int i10) {
            String[] strArr = new String[i10 - i4];
            for (int i11 = i4; i11 != size() && i11 != i10; i11++) {
                strArr[i11 - i4] = get(i11);
            }
            return strArr;
        }
    }

    static {
        try {
            try {
                LINE_SEPARATOR = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: org.bouncycastle.util.Strings.1
                    @Override // java.security.PrivilegedAction
                    public String run() {
                        return System.getProperty("line.separator");
                    }
                });
            } catch (Exception unused) {
                LINE_SEPARATOR = "\n";
            }
        } catch (Exception unused2) {
            LINE_SEPARATOR = String.format("%n", new Object[0]);
        }
    }

    public static char[] asCharArray(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i4 = 0; i4 != length; i4++) {
            cArr[i4] = (char) (bArr[i4] & 255);
        }
        return cArr;
    }

    public static boolean constantTimeAreEqual(String str, String str2) {
        boolean z9 = str.length() == str2.length();
        int length = str.length();
        for (int i4 = 0; i4 != length; i4++) {
            z9 &= str.charAt(i4) == str2.charAt(i4);
        }
        return z9;
    }

    public static String fromByteArray(byte[] bArr) {
        return new String(asCharArray(bArr));
    }

    public static String fromUTF8ByteArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int transcodeToUTF16 = UTF8.transcodeToUTF16(bArr, cArr);
        if (transcodeToUTF16 >= 0) {
            return new String(cArr, 0, transcodeToUTF16);
        }
        throw new IllegalArgumentException("Invalid UTF-8 input");
    }

    public static String lineSeparator() {
        return LINE_SEPARATOR;
    }

    public static StringList newList() {
        return new StringListImpl();
    }

    public static String[] split(String str, char c10) {
        int i4;
        Vector vector = new Vector();
        boolean z9 = true;
        while (true) {
            if (!z9) {
                break;
            }
            int indexOf = str.indexOf(c10);
            if (indexOf > 0) {
                vector.addElement(str.substring(0, indexOf));
                str = str.substring(indexOf + 1);
            } else {
                vector.addElement(str);
                z9 = false;
            }
        }
        int size = vector.size();
        String[] strArr = new String[size];
        for (i4 = 0; i4 != size; i4++) {
            strArr[i4] = (String) vector.elementAt(i4);
        }
        return strArr;
    }

    public static int toByteArray(String str, byte[] bArr, int i4) {
        int length = str.length();
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i4 + i10] = (byte) str.charAt(i10);
        }
        return length;
    }

    public static byte[] toByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 != length; i4++) {
            bArr[i4] = (byte) str.charAt(i4);
        }
        return bArr;
    }

    public static byte[] toByteArray(char[] cArr) {
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 != length; i4++) {
            bArr[i4] = (byte) cArr[i4];
        }
        return bArr;
    }

    public static String toLowerCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z9 = false;
        for (int i4 = 0; i4 != charArray.length; i4++) {
            char c10 = charArray[i4];
            if ('A' <= c10 && 'Z' >= c10) {
                charArray[i4] = (char) ((c10 - 'A') + 97);
                z9 = true;
            }
        }
        return z9 ? new String(charArray) : str;
    }

    public static void toUTF8ByteArray(char[] cArr, OutputStream outputStream) throws IOException {
        int i4;
        char c10;
        int i10 = 0;
        while (i10 < cArr.length) {
            char c11 = cArr[i10];
            char c12 = c11;
            if (c11 >= 128) {
                if (c11 < 2048) {
                    i4 = (c11 >> 6) | 192;
                } else if (c11 < 55296 || c11 > 57343) {
                    outputStream.write((c11 >> '\f') | 224);
                    i4 = ((c11 >> 6) & 63) | 128;
                } else {
                    i10++;
                    if (i10 >= cArr.length) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    char c13 = cArr[i10];
                    if (c11 > 56319) {
                        throw new IllegalStateException("invalid UTF-16 codepoint");
                    }
                    int i11 = (((c11 & 1023) << 10) | (c13 & 1023)) + 65536;
                    outputStream.write((i11 >> 18) | a0.A);
                    outputStream.write(((i11 >> 12) & 63) | 128);
                    outputStream.write(((i11 >> 6) & 63) | 128);
                    c10 = i11;
                    c12 = (c10 & 63) | 128;
                }
                outputStream.write(i4);
                c10 = c11;
                c12 = (c10 & 63) | 128;
            }
            outputStream.write(c12);
            i10++;
        }
    }

    public static byte[] toUTF8ByteArray(String str) {
        return toUTF8ByteArray(str.toCharArray());
    }

    public static byte[] toUTF8ByteArray(char[] cArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            toUTF8ByteArray(cArr, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            throw new IllegalStateException("cannot encode string to byte array!");
        }
    }

    public static String toUpperCase(String str) {
        char[] charArray = str.toCharArray();
        boolean z9 = false;
        for (int i4 = 0; i4 != charArray.length; i4++) {
            char c10 = charArray[i4];
            if ('a' <= c10 && 'z' >= c10) {
                charArray[i4] = (char) ((c10 - 'a') + 65);
                z9 = true;
            }
        }
        return z9 ? new String(charArray) : str;
    }
}
