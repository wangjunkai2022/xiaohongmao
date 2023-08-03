package com.google.mlkit.common.sdkinternal.model;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.File;

/* compiled from: com.google.mlkit:common@@18.4.0 */
@u2.a
/* loaded from: classes2.dex */
public interface ModelValidator {

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @u2.a
    /* loaded from: classes2.dex */
    public static class ValidationResult {
        @NonNull
        @u2.a

        /* renamed from: c  reason: collision with root package name */
        public static final ValidationResult f35820c = new ValidationResult(ErrorCode.OK, null);

        /* renamed from: a  reason: collision with root package name */
        private final ErrorCode f35821a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final String f35822b;

        /* compiled from: com.google.mlkit:common@@18.4.0 */
        @u2.a
        /* loaded from: classes2.dex */
        public enum ErrorCode {
            OK,
            TFLITE_VERSION_INCOMPATIBLE,
            MODEL_FORMAT_INVALID
        }

        @u2.a
        public ValidationResult(@NonNull ErrorCode errorCode, @Nullable String str) {
            this.f35821a = errorCode;
            this.f35822b = str;
        }

        @NonNull
        @u2.a
        public ErrorCode a() {
            return this.f35821a;
        }

        @Nullable
        @u2.a
        public String b() {
            return this.f35822b;
        }

        @u2.a
        public boolean c() {
            return this.f35821a == ErrorCode.OK;
        }
    }

    @NonNull
    @u2.a
    ValidationResult a(@NonNull File file, @NonNull com.google.mlkit.common.model.d dVar);
}
