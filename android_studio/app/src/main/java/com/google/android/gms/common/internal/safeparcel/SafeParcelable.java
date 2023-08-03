package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcelable;
import androidx.annotation.NonNull;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public interface SafeParcelable extends Parcelable {
    @NonNull
    public static final String NULL = "SAFE_PARCELABLE_NULL_STRING";

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public @interface a {
        @NonNull
        String creator();

        boolean doNotParcelTypeDefaultValues() default false;

        boolean validate() default false;
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public @interface b {
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public @interface c {
        @NonNull
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        @NonNull
        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        @NonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        int id();

        @NonNull
        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public @interface d {
        @NonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public @interface e {
        int id();
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public @interface f {
        @NonNull
        int[] value();
    }

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    /* loaded from: classes2.dex */
    public @interface g {
        @NonNull
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        int id();

        @NonNull
        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }
}
