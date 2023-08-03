package com.alipay.sdk.packet;

import com.alipay.sdk.util.l;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.util.Locale;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6913a;

    /* renamed from: b  reason: collision with root package name */
    private String f6914b = l.n();

    public e(boolean z9) {
        this.f6913a = z9;
    }

    private static int a(String str) {
        return Integer.parseInt(str);
    }

    private static String d(int i4) {
        return String.format(Locale.getDefault(), "%05d", Integer.valueOf(i4));
    }

    private static byte[] e(String str, String str2) {
        return n.d.a(str, str2);
    }

    private static byte[] f(String str, byte[] bArr) {
        return n.e.b(str, bArr);
    }

    private static byte[] g(byte[]... bArr) {
        DataOutputStream dataOutputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            if (bArr.length == 0) {
                return null;
            }
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                    for (int i4 = 0; i4 < bArr.length; i4++) {
                        try {
                            dataOutputStream.write(String.format(Locale.getDefault(), "%05d", Integer.valueOf(bArr[i4].length)).getBytes());
                            dataOutputStream.write(bArr[i4]);
                        } catch (Exception unused) {
                            if (byteArrayOutputStream != null) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused2) {
                                }
                            }
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                            }
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            byteArrayOutputStream2 = byteArrayOutputStream;
                            if (byteArrayOutputStream2 != null) {
                                try {
                                    byteArrayOutputStream2.close();
                                } catch (Exception unused3) {
                                }
                            }
                            if (dataOutputStream != null) {
                                try {
                                    dataOutputStream.close();
                                } catch (Exception unused4) {
                                }
                            }
                            throw th;
                        }
                    }
                    dataOutputStream.flush();
                    byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception unused5) {
                    }
                    dataOutputStream.close();
                } catch (Exception unused6) {
                    dataOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    dataOutputStream = null;
                }
            } catch (Exception unused7) {
                byteArrayOutputStream = null;
                dataOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream = null;
            }
        } catch (Exception unused8) {
        }
    }

    private static byte[] h(String str, byte[] bArr) {
        return n.e.d(str, bArr);
    }

    public final b b(c cVar) {
        ByteArrayInputStream byteArrayInputStream;
        String str;
        String str2;
        ByteArrayInputStream byteArrayInputStream2 = null;
        try {
            byteArrayInputStream = new ByteArrayInputStream(cVar.f6892b);
            try {
                try {
                    byte[] bArr = new byte[5];
                    byteArrayInputStream.read(bArr);
                    byte[] bArr2 = new byte[Integer.parseInt(new String(bArr))];
                    byteArrayInputStream.read(bArr2);
                    str = new String(bArr2);
                    try {
                        byte[] bArr3 = new byte[5];
                        byteArrayInputStream.read(bArr3);
                        int parseInt = Integer.parseInt(new String(bArr3));
                        if (parseInt > 0) {
                            byte[] bArr4 = new byte[parseInt];
                            byteArrayInputStream.read(bArr4);
                            if (this.f6913a) {
                                bArr4 = n.e.d(this.f6914b, bArr4);
                            }
                            if (cVar.f6891a) {
                                bArr4 = n.c.b(bArr4);
                            }
                            str2 = new String(bArr4);
                        } else {
                            str2 = null;
                        }
                        try {
                            byteArrayInputStream.close();
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                        if (byteArrayInputStream != null) {
                            try {
                                byteArrayInputStream.close();
                            } catch (Exception unused3) {
                            }
                        }
                        str2 = null;
                        if (str == null) {
                        }
                        return new b(str, str2);
                    }
                } catch (Throwable th) {
                    th = th;
                    byteArrayInputStream2 = byteArrayInputStream;
                    if (byteArrayInputStream2 != null) {
                        try {
                            byteArrayInputStream2.close();
                        } catch (Exception unused4) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused5) {
                str = null;
            }
        } catch (Exception unused6) {
            byteArrayInputStream = null;
            str = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (str == null || str2 != null) {
            return new b(str, str2);
        }
        return null;
    }

    public final c c(b bVar, boolean z9) {
        byte[] g4;
        byte[] bytes = bVar.f6889a.getBytes();
        byte[] bytes2 = bVar.f6890b.getBytes();
        if (z9) {
            try {
                bytes2 = n.c.a(bytes2);
            } catch (Exception unused) {
                z9 = false;
            }
        }
        if (this.f6913a) {
            g4 = g(bytes, n.d.a(this.f6914b, m.a.f86903b), n.e.b(this.f6914b, bytes2));
        } else {
            g4 = g(bytes, bytes2);
        }
        return new c(z9, g4);
    }
}
