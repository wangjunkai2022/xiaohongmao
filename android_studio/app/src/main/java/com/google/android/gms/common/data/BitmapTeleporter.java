package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.cache.disk.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.y;
import io.sentry.instrumentation.file.l;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@SafeParcelable.a(creator = "BitmapTeleporterCreator")
@u2.a
@y
/* loaded from: classes2.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    @NonNull
    @u2.a
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new m();
    @SafeParcelable.g(id = 1)
    final int zaa;
    @Nullable
    @SafeParcelable.c(id = 2)
    ParcelFileDescriptor zab;
    @SafeParcelable.c(id = 3)
    final int zac;
    @Nullable
    private Bitmap zad;
    private boolean zae;
    private File zaf;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.b
    public BitmapTeleporter(@SafeParcelable.e(id = 1) int i4, @SafeParcelable.e(id = 2) ParcelFileDescriptor parcelFileDescriptor, @SafeParcelable.e(id = 3) int i10) {
        this.zaa = i4;
        this.zab = parcelFileDescriptor;
        this.zac = i10;
        this.zad = null;
        this.zae = false;
    }

    private static final void zaa(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e4) {
            Log.w("BitmapTeleporter", "Could not close stream", e4);
        }
    }

    @Nullable
    @u2.a
    public Bitmap get() {
        if (!this.zae) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream((ParcelFileDescriptor) u.k(this.zab)));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int readInt = dataInputStream.readInt();
                    int readInt2 = dataInputStream.readInt();
                    Bitmap.Config valueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    zaa(dataInputStream);
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    Bitmap createBitmap = Bitmap.createBitmap(readInt, readInt2, valueOf);
                    createBitmap.copyPixelsFromBuffer(wrap);
                    this.zad = createBitmap;
                    this.zae = true;
                } catch (IOException e4) {
                    throw new IllegalStateException("Could not read from parcel file descriptor", e4);
                }
            } catch (Throwable th) {
                zaa(dataInputStream);
                throw th;
            }
        }
        return this.zad;
    }

    @u2.a
    public void release() {
        if (this.zae) {
            return;
        }
        try {
            ((ParcelFileDescriptor) u.k(this.zab)).close();
        } catch (IOException e4) {
            Log.w("BitmapTeleporter", "Could not close PFD", e4);
        }
    }

    @u2.a
    public void setTempDir(@NonNull File file) {
        Objects.requireNonNull(file, "Cannot set null temp directory");
        this.zaf = file;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(@NonNull Parcel parcel, int i4) {
        if (this.zab == null) {
            Bitmap bitmap = (Bitmap) u.k(this.zad);
            ByteBuffer allocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(allocate);
            byte[] array = allocate.array();
            File file = this.zaf;
            if (file != null) {
                try {
                    File createTempFile = File.createTempFile("teleporter", a.e.J, file);
                    try {
                        FileOutputStream a10 = l.b.a(new FileOutputStream(createTempFile), createTempFile);
                        this.zab = ParcelFileDescriptor.open(createTempFile, 268435456);
                        createTempFile.delete();
                        DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(a10));
                        try {
                            try {
                                dataOutputStream.writeInt(array.length);
                                dataOutputStream.writeInt(bitmap.getWidth());
                                dataOutputStream.writeInt(bitmap.getHeight());
                                dataOutputStream.writeUTF(bitmap.getConfig().toString());
                                dataOutputStream.write(array);
                            } catch (IOException e4) {
                                throw new IllegalStateException("Could not write into unlinked file", e4);
                            }
                        } finally {
                            zaa(dataOutputStream);
                        }
                    } catch (FileNotFoundException unused) {
                        throw new IllegalStateException("Temporary file is somehow already deleted");
                    }
                } catch (IOException e10) {
                    throw new IllegalStateException("Could not create temporary file", e10);
                }
            } else {
                throw new IllegalStateException("setTempDir() must be called before writing this object to a parcel");
            }
        }
        int a11 = w2.a.a(parcel);
        w2.a.F(parcel, 1, this.zaa);
        w2.a.S(parcel, 2, this.zab, i4 | 1, false);
        w2.a.F(parcel, 3, this.zac);
        w2.a.b(parcel, a11);
        this.zab = null;
    }

    @u2.a
    public BitmapTeleporter(@NonNull Bitmap bitmap) {
        this.zaa = 1;
        this.zab = null;
        this.zac = 0;
        this.zad = bitmap;
        this.zae = true;
    }
}
