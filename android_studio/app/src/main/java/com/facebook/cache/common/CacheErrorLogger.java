package com.facebook.cache.common;

import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface CacheErrorLogger {

    /* loaded from: classes.dex */
    public enum CacheErrorCategory {
        READ_DECODE,
        READ_FILE,
        READ_FILE_NOT_FOUND,
        READ_INVALID_ENTRY,
        WRITE_ENCODE,
        WRITE_CREATE_TEMPFILE,
        WRITE_UPDATE_FILE_NOT_FOUND,
        WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND,
        WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND,
        WRITE_RENAME_FILE_OTHER,
        WRITE_CREATE_DIR,
        WRITE_CALLBACK_ERROR,
        WRITE_INVALID_ENTRY,
        DELETE_FILE,
        EVICTION,
        GENERIC_IO,
        OTHER
    }

    void a(CacheErrorCategory category, Class<?> clazz, String message, @r7.h Throwable throwable);
}
