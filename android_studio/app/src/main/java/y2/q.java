package y2;

import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
@com.google.android.gms.common.internal.y
@Deprecated
/* loaded from: classes2.dex */
public final class q {
    private q() {
    }

    @u2.a
    public static void a(@r7.h ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException unused) {
            }
        }
    }

    @u2.a
    public static void b(@r7.h Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @u2.a
    @Deprecated
    public static long c(@NonNull InputStream inputStream, @NonNull OutputStream outputStream) throws IOException {
        return d(inputStream, outputStream, false, 1024);
    }

    @u2.a
    @Deprecated
    public static long d(@NonNull InputStream inputStream, @NonNull OutputStream outputStream, boolean z9, int i4) throws IOException {
        byte[] bArr = new byte[i4];
        long j4 = 0;
        while (true) {
            try {
                int read = inputStream.read(bArr, 0, i4);
                if (read == -1) {
                    break;
                }
                j4 += read;
                outputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                if (z9) {
                    b(inputStream);
                    b(outputStream);
                }
                throw th;
            }
        }
        if (z9) {
            b(inputStream);
            b(outputStream);
        }
        return j4;
    }

    @u2.a
    public static boolean e(@NonNull byte[] bArr) {
        if (bArr.length > 1) {
            if ((((bArr[1] & 255) << 8) | (bArr[0] & 255)) == 35615) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    @u2.a
    @Deprecated
    public static byte[] f(@NonNull InputStream inputStream) throws IOException {
        return g(inputStream, true);
    }

    @NonNull
    @u2.a
    @Deprecated
    public static byte[] g(@NonNull InputStream inputStream, boolean z9) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        d(inputStream, byteArrayOutputStream, z9, 1024);
        return byteArrayOutputStream.toByteArray();
    }

    @NonNull
    @u2.a
    @Deprecated
    public static byte[] h(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        com.google.android.gms.common.internal.u.k(inputStream);
        com.google.android.gms.common.internal.u.k(byteArrayOutputStream);
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }
}
