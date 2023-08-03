package androidx.core.util;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public class AtomicFile {
    private static final String LOG_TAG = "AtomicFile";
    private final File mBaseName;
    private final File mLegacyBackupName;
    private final File mNewName;

    public AtomicFile(@NonNull File file) {
        this.mBaseName = file;
        this.mNewName = new File(file.getPath() + ".new");
        this.mLegacyBackupName = new File(file.getPath() + ".bak");
    }

    private static void rename(@NonNull File file, @NonNull File file2) {
        if (file2.isDirectory() && !file2.delete()) {
            Log.e(LOG_TAG, "Failed to delete file which is a directory " + file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        Log.e(LOG_TAG, "Failed to rename " + file + " to " + file2);
    }

    private static boolean sync(@NonNull FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public void delete() {
        this.mBaseName.delete();
        this.mNewName.delete();
        this.mLegacyBackupName.delete();
    }

    public void failWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        if (!sync(fileOutputStream)) {
            Log.e(LOG_TAG, "Failed to sync file output stream");
        }
        try {
            fileOutputStream.close();
        } catch (IOException e4) {
            Log.e(LOG_TAG, "Failed to close file output stream", e4);
        }
        if (this.mNewName.delete()) {
            return;
        }
        Log.e(LOG_TAG, "Failed to delete new file " + this.mNewName);
    }

    public void finishWrite(@Nullable FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        if (!sync(fileOutputStream)) {
            Log.e(LOG_TAG, "Failed to sync file output stream");
        }
        try {
            fileOutputStream.close();
        } catch (IOException e4) {
            Log.e(LOG_TAG, "Failed to close file output stream", e4);
        }
        rename(this.mNewName, this.mBaseName);
    }

    @NonNull
    public File getBaseFile() {
        return this.mBaseName;
    }

    @NonNull
    public FileInputStream openRead() throws FileNotFoundException {
        if (this.mLegacyBackupName.exists()) {
            rename(this.mLegacyBackupName, this.mBaseName);
        }
        if (this.mNewName.exists() && this.mBaseName.exists() && !this.mNewName.delete()) {
            Log.e(LOG_TAG, "Failed to delete outdated new file " + this.mNewName);
        }
        File file = this.mBaseName;
        return h.b.a(new FileInputStream(file), file);
    }

    @NonNull
    public byte[] readFully() throws IOException {
        FileInputStream openRead = openRead();
        try {
            byte[] bArr = new byte[openRead.available()];
            int i4 = 0;
            while (true) {
                int read = openRead.read(bArr, i4, bArr.length - i4);
                if (read <= 0) {
                    return bArr;
                }
                i4 += read;
                int available = openRead.available();
                if (available > bArr.length - i4) {
                    byte[] bArr2 = new byte[available + i4];
                    System.arraycopy(bArr, 0, bArr2, 0, i4);
                    bArr = bArr2;
                }
            }
        } finally {
            openRead.close();
        }
    }

    @NonNull
    public FileOutputStream startWrite() throws IOException {
        if (this.mLegacyBackupName.exists()) {
            rename(this.mLegacyBackupName, this.mBaseName);
        }
        try {
            File file = this.mNewName;
            return l.b.a(new FileOutputStream(file), file);
        } catch (FileNotFoundException unused) {
            if (this.mNewName.getParentFile().mkdirs()) {
                try {
                    File file2 = this.mNewName;
                    return l.b.a(new FileOutputStream(file2), file2);
                } catch (FileNotFoundException e4) {
                    throw new IOException("Failed to create new file " + this.mNewName, e4);
                }
            }
            throw new IOException("Failed to create directory for " + this.mNewName);
        }
    }
}
