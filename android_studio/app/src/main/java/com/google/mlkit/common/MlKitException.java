package com.google.mlkit.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.u;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public class MlKitException extends Exception {
    public static final int ABORTED = 10;
    public static final int ALREADY_EXISTS = 6;
    public static final int CANCELLED = 1;
    public static final int CODE_SCANNER_APP_NAME_UNAVAILABLE = 203;
    public static final int CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED = 202;
    public static final int CODE_SCANNER_CANCELLED = 201;
    public static final int CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD = 207;
    public static final int CODE_SCANNER_PIPELINE_INFERENCE_ERROR = 206;
    public static final int CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR = 205;
    public static final int CODE_SCANNER_TASK_IN_PROGRESS = 204;
    public static final int CODE_SCANNER_UNAVAILABLE = 200;
    public static final int DATA_LOSS = 15;
    public static final int DEADLINE_EXCEEDED = 4;
    public static final int FAILED_PRECONDITION = 9;
    public static final int INTERNAL = 13;
    public static final int INVALID_ARGUMENT = 3;
    public static final int MODEL_HASH_MISMATCH = 102;
    public static final int MODEL_INCOMPATIBLE_WITH_TFLITE = 100;
    public static final int NETWORK_ISSUE = 17;
    public static final int NOT_ENOUGH_SPACE = 101;
    public static final int NOT_FOUND = 5;
    public static final int OUT_OF_RANGE = 11;
    public static final int PERMISSION_DENIED = 7;
    public static final int RESOURCE_EXHAUSTED = 8;
    public static final int UNAUTHENTICATED = 16;
    public static final int UNAVAILABLE = 14;
    public static final int UNIMPLEMENTED = 12;
    public static final int UNKNOWN = 2;
    @a

    /* renamed from: a  reason: collision with root package name */
    private final int f35721a;

    /* compiled from: com.google.mlkit:common@@18.4.0 */
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    @u2.a
    public MlKitException(@NonNull String str, @a int i4) {
        super(u.h(str, "Provided message must not be empty."));
        this.f35721a = i4;
    }

    @a
    public int getErrorCode() {
        return this.f35721a;
    }

    @u2.a
    public MlKitException(@NonNull String str, @a int i4, @Nullable Throwable th) {
        super(u.h(str, "Provided message must not be empty."), th);
        this.f35721a = i4;
    }
}
