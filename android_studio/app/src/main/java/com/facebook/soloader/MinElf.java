package com.facebook.soloader;

import android.util.Log;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.ClosedByInterruptException;
import java.nio.channels.FileChannel;
import kotlin.UShort;
import okhttp3.internal.ws.WebSocketProtocol;
import tv.cjump.jni.DeviceUtils;

/* loaded from: classes.dex */
public final class MinElf {

    /* renamed from: a  reason: collision with root package name */
    private static final String f13410a = "MinElf";

    /* renamed from: b  reason: collision with root package name */
    public static final int f13411b = 1179403647;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13412c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13413d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13414e = 5;

    /* renamed from: f  reason: collision with root package name */
    public static final int f13415f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13416g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13417h = 65535;

    /* loaded from: classes.dex */
    public enum ISA {
        NOT_SO("not_so"),
        X86(DeviceUtils.f93869a),
        ARM("armeabi-v7a"),
        X86_64("x86_64"),
        AARCH64("arm64-v8a"),
        OTHERS("others");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f13419a;

        ISA(String str) {
            this.f13419a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f13419a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a extends RuntimeException {
        a(String str) {
            super(str);
        }
    }

    public static String[] a(File file) throws IOException {
        int i4 = 0;
        while (true) {
            FileInputStream a10 = h.b.a(new FileInputStream(file), file);
            try {
                return b(a10.getChannel());
            } catch (ClosedByInterruptException e4) {
                i4++;
                if (i4 <= 3) {
                    Thread.interrupted();
                    Log.e(f13410a, "retrying extract_DT_NEEDED due to ClosedByInterruptException", e4);
                } else {
                    throw e4;
                }
            } finally {
                a10.close();
            }
        }
    }

    public static String[] b(FileChannel fileChannel) throws IOException {
        long f10;
        long j4;
        long j10;
        long j11;
        long f11;
        long j12;
        long c10;
        long c11;
        long c12;
        long f12;
        long f13;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (f(fileChannel, allocate, 0L) == 1179403647) {
            boolean z9 = g(fileChannel, allocate, 4L) == 1;
            if (g(fileChannel, allocate, 5L) == 2) {
                allocate.order(ByteOrder.BIG_ENDIAN);
            }
            long f14 = z9 ? f(fileChannel, allocate, 28L) : c(fileChannel, allocate, 32L);
            long e4 = z9 ? e(fileChannel, allocate, 44L) : e(fileChannel, allocate, 56L);
            int e10 = e(fileChannel, allocate, z9 ? 42L : 54L);
            if (e4 == WebSocketProtocol.PAYLOAD_SHORT_MAX) {
                long f15 = z9 ? f(fileChannel, allocate, 32L) : c(fileChannel, allocate, 40L);
                if (z9) {
                    f13 = f(fileChannel, allocate, f15 + 28);
                } else {
                    f13 = f(fileChannel, allocate, f15 + 44);
                }
                e4 = f13;
            }
            long j13 = f14;
            long j14 = 0;
            while (true) {
                if (j14 >= e4) {
                    j4 = 0;
                    break;
                }
                if (z9) {
                    f12 = f(fileChannel, allocate, j13 + 0);
                } else {
                    f12 = f(fileChannel, allocate, j13 + 0);
                }
                if (f12 != 2) {
                    j13 += e10;
                    j14++;
                } else if (z9) {
                    j4 = f(fileChannel, allocate, j13 + 4);
                } else {
                    j4 = c(fileChannel, allocate, j13 + 8);
                }
            }
            long j15 = 0;
            if (j4 == 0) {
                throw new a("ELF file does not contain dynamic linking information");
            }
            long j16 = j4;
            long j17 = 0;
            int i4 = 0;
            while (true) {
                boolean z10 = z9;
                long f16 = z9 ? f(fileChannel, allocate, j16 + j15) : c(fileChannel, allocate, j16 + j15);
                if (f16 == 1) {
                    j10 = j4;
                    if (i4 == Integer.MAX_VALUE) {
                        throw new a("malformed DT_NEEDED section");
                    }
                    i4++;
                } else {
                    j10 = j4;
                    if (f16 == 5) {
                        j17 = z10 ? f(fileChannel, allocate, j16 + 4) : c(fileChannel, allocate, j16 + 8);
                    }
                }
                long j18 = 16;
                j16 += z10 ? 8L : 16L;
                j15 = 0;
                if (f16 != 0) {
                    z9 = z10;
                    j4 = j10;
                } else if (j17 == 0) {
                    throw new a("Dynamic section string-table not found");
                } else {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= e4) {
                            j11 = 0;
                            break;
                        }
                        if (z10) {
                            f11 = f(fileChannel, allocate, f14 + j15);
                        } else {
                            f11 = f(fileChannel, allocate, f14 + j15);
                        }
                        if (f11 == 1) {
                            if (z10) {
                                c10 = f(fileChannel, allocate, f14 + 8);
                            } else {
                                c10 = c(fileChannel, allocate, f14 + j18);
                            }
                            if (z10) {
                                j12 = e4;
                                c11 = f(fileChannel, allocate, f14 + 20);
                            } else {
                                j12 = e4;
                                c11 = c(fileChannel, allocate, f14 + 40);
                            }
                            if (c10 <= j17 && j17 < c11 + c10) {
                                if (z10) {
                                    c12 = f(fileChannel, allocate, f14 + 4);
                                } else {
                                    c12 = c(fileChannel, allocate, f14 + 8);
                                }
                                j11 = c12 + (j17 - c10);
                            }
                        } else {
                            j12 = e4;
                        }
                        f14 += e10;
                        i10++;
                        e4 = j12;
                        j18 = 16;
                        j15 = 0;
                    }
                    long j19 = 0;
                    if (j11 != 0) {
                        String[] strArr = new String[i4];
                        int i11 = 0;
                        while (true) {
                            long j20 = j10 + j19;
                            long f17 = z10 ? f(fileChannel, allocate, j20) : c(fileChannel, allocate, j20);
                            if (f17 == 1) {
                                strArr[i11] = d(fileChannel, allocate, (z10 ? f(fileChannel, allocate, j10 + 4) : c(fileChannel, allocate, j10 + 8)) + j11);
                                if (i11 == Integer.MAX_VALUE) {
                                    throw new a("malformed DT_NEEDED section");
                                }
                                i11++;
                            }
                            j10 += z10 ? 8L : 16L;
                            if (f17 == 0) {
                                if (i11 == i4) {
                                    return strArr;
                                }
                                throw new a("malformed DT_NEEDED section");
                            }
                            j19 = 0;
                        }
                    } else {
                        throw new a("did not find file offset of DT_STRTAB table");
                    }
                }
            }
        } else {
            throw new a("file is not ELF: 0x" + Long.toHexString(f10));
        }
    }

    private static long c(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 8, j4);
        return byteBuffer.getLong();
    }

    private static String d(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        StringBuilder sb = new StringBuilder();
        while (true) {
            long j10 = 1 + j4;
            short g4 = g(fileChannel, byteBuffer, j4);
            if (g4 != 0) {
                sb.append((char) g4);
                j4 = j10;
            } else {
                return sb.toString();
            }
        }
    }

    private static int e(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 2, j4);
        return byteBuffer.getShort() & UShort.MAX_VALUE;
    }

    private static long f(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 4, j4);
        return byteBuffer.getInt() & 4294967295L;
    }

    private static short g(FileChannel fileChannel, ByteBuffer byteBuffer, long j4) throws IOException {
        h(fileChannel, byteBuffer, 1, j4);
        return (short) (byteBuffer.get() & 255);
    }

    private static void h(FileChannel fileChannel, ByteBuffer byteBuffer, int i4, long j4) throws IOException {
        int read;
        byteBuffer.position(0);
        byteBuffer.limit(i4);
        while (byteBuffer.remaining() > 0 && (read = fileChannel.read(byteBuffer, j4)) != -1) {
            j4 += read;
        }
        if (byteBuffer.remaining() <= 0) {
            byteBuffer.position(0);
            return;
        }
        throw new a("ELF file truncated");
    }
}
