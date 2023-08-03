package com.airbnb.lottie.parser.moshi;

import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;

/* loaded from: classes.dex */
public abstract class JsonReader implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f4648g = new String[128];

    /* renamed from: a  reason: collision with root package name */
    int f4649a;

    /* renamed from: b  reason: collision with root package name */
    int[] f4650b = new int[32];

    /* renamed from: c  reason: collision with root package name */
    String[] f4651c = new String[32];

    /* renamed from: d  reason: collision with root package name */
    int[] f4652d = new int[32];

    /* renamed from: e  reason: collision with root package name */
    boolean f4653e;

    /* renamed from: f  reason: collision with root package name */
    boolean f4654f;

    /* loaded from: classes.dex */
    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final String[] f4656a;

        /* renamed from: b  reason: collision with root package name */
        final Options f4657b;

        private a(String[] strArr, Options options) {
            this.f4656a = strArr;
            this.f4657b = options;
        }

        public static a a(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i4 = 0; i4 < strArr.length; i4++) {
                    JsonReader.J(buffer, strArr[i4]);
                    buffer.readByte();
                    byteStringArr[i4] = buffer.readByteString();
                }
                return new a((String[]) strArr.clone(), Options.of(byteStringArr));
            } catch (IOException e4) {
                throw new AssertionError(e4);
            }
        }
    }

    static {
        for (int i4 = 0; i4 <= 31; i4++) {
            f4648g[i4] = String.format("\\u%04x", Integer.valueOf(i4));
        }
        String[] strArr = f4648g;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public static JsonReader A(BufferedSource bufferedSource) {
        return new d(bufferedSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void J(okio.BufferedSink r7, java.lang.String r8) throws java.io.IOException {
        /*
            java.lang.String[] r0 = com.airbnb.lottie.parser.moshi.JsonReader.f4648g
            r1 = 34
            r7.writeByte(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = 0
        Ld:
            if (r3 >= r2) goto L36
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.794E-43)
            if (r5 >= r6) goto L1c
            r5 = r0[r5]
            if (r5 != 0) goto L29
            goto L33
        L1c:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L23
            java.lang.String r5 = "\\u2028"
            goto L29
        L23:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L33
            java.lang.String r5 = "\\u2029"
        L29:
            if (r4 >= r3) goto L2e
            r7.writeUtf8(r8, r4, r3)
        L2e:
            r7.writeUtf8(r5)
            int r4 = r3 + 1
        L33:
            int r3 = r3 + 1
            goto Ld
        L36:
            if (r4 >= r2) goto L3b
            r7.writeUtf8(r8, r4, r2)
        L3b:
            r7.writeByte(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonReader.J(okio.BufferedSink, java.lang.String):void");
    }

    public abstract Token D() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void E(int i4) {
        int i10 = this.f4649a;
        int[] iArr = this.f4650b;
        if (i10 == iArr.length) {
            if (i10 != 256) {
                this.f4650b = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.f4651c;
                this.f4651c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.f4652d;
                this.f4652d = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                throw new com.airbnb.lottie.parser.moshi.a("Nesting too deep at " + getPath());
            }
        }
        int[] iArr3 = this.f4650b;
        int i11 = this.f4649a;
        this.f4649a = i11 + 1;
        iArr3[i11] = i4;
    }

    public abstract int G(a aVar) throws IOException;

    public abstract void H() throws IOException;

    public abstract void I() throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final b K(String str) throws b {
        throw new b(str + " at path " + getPath());
    }

    public abstract void b() throws IOException;

    public abstract void d() throws IOException;

    public final String getPath() {
        return c.a(this.f4649a, this.f4650b, this.f4651c, this.f4652d);
    }

    public abstract void h() throws IOException;

    public abstract void i() throws IOException;

    public abstract boolean k() throws IOException;

    public abstract boolean p() throws IOException;

    public abstract double q() throws IOException;

    public abstract int r() throws IOException;

    public abstract String s() throws IOException;

    public abstract String y() throws IOException;
}
