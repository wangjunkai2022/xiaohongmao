package com.facebook.common.file;

import com.facebook.common.internal.j;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import r7.h;

/* loaded from: classes.dex */
public class FileUtils {

    /* loaded from: classes.dex */
    public static class CreateDirectoryException extends IOException {
        public CreateDirectoryException(String message) {
            super(message);
        }

        public CreateDirectoryException(String message, Throwable innerException) {
            super(message);
            initCause(innerException);
        }
    }

    /* loaded from: classes.dex */
    public static class FileDeleteException extends IOException {
        public FileDeleteException(String message) {
            super(message);
        }
    }

    /* loaded from: classes.dex */
    public static class ParentDirNotFoundException extends FileNotFoundException {
        public ParentDirNotFoundException(String message) {
            super(message);
        }
    }

    /* loaded from: classes.dex */
    public static class RenameException extends IOException {
        public RenameException(String message) {
            super(message);
        }

        public RenameException(String message, @h Throwable innerException) {
            super(message);
            initCause(innerException);
        }
    }

    public static void a(File directory) throws CreateDirectoryException {
        if (directory.exists()) {
            if (directory.isDirectory()) {
                return;
            }
            if (!directory.delete()) {
                throw new CreateDirectoryException(directory.getAbsolutePath(), new FileDeleteException(directory.getAbsolutePath()));
            }
        }
        if (!directory.mkdirs() && !directory.isDirectory()) {
            throw new CreateDirectoryException(directory.getAbsolutePath());
        }
    }

    public static void b(File source, File target) throws RenameException {
        j.i(source);
        j.i(target);
        target.delete();
        if (source.renameTo(target)) {
            return;
        }
        Throwable th = null;
        if (!target.exists()) {
            if (source.getParentFile().exists()) {
                if (!source.exists()) {
                    th = new FileNotFoundException(source.getAbsolutePath());
                }
            } else {
                th = new ParentDirNotFoundException(source.getAbsolutePath());
            }
        } else {
            th = new FileDeleteException(target.getAbsolutePath());
        }
        throw new RenameException("Unknown error renaming " + source.getAbsolutePath() + " to " + target.getAbsolutePath(), th);
    }
}
