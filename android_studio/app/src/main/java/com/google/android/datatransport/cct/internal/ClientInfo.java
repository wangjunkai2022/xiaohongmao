package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.e;
import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes2.dex */
public abstract class ClientInfo {

    /* loaded from: classes2.dex */
    public enum ClientType {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f20239a;

        ClientType(int i4) {
            this.f20239a = i4;
        }
    }

    @AutoValue.Builder
    /* loaded from: classes2.dex */
    public static abstract class a {
        @NonNull
        public abstract ClientInfo a();

        @NonNull
        public abstract a b(@Nullable com.google.android.datatransport.cct.internal.a aVar);

        @NonNull
        public abstract a c(@Nullable ClientType clientType);
    }

    @NonNull
    public static a a() {
        return new e.b();
    }

    @Nullable
    public abstract com.google.android.datatransport.cct.internal.a b();

    @Nullable
    public abstract ClientType c();
}
