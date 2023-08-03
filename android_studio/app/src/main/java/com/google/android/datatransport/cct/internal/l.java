package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.g;
import com.google.auto.value.AutoValue;
import java.util.List;
import l3.a;

/* compiled from: LogRequest.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class l {

    /* compiled from: LogRequest.java */
    @AutoValue.Builder
    /* loaded from: classes2.dex */
    public static abstract class a {
        @NonNull
        public abstract l a();

        @NonNull
        public abstract a b(@Nullable ClientInfo clientInfo);

        @NonNull
        public abstract a c(@Nullable List<k> list);

        @NonNull
        abstract a d(@Nullable Integer num);

        @NonNull
        abstract a e(@Nullable String str);

        @NonNull
        public abstract a f(@Nullable QosTier qosTier);

        @NonNull
        public abstract a g(long j4);

        @NonNull
        public abstract a h(long j4);

        @NonNull
        public a i(int i4) {
            return d(Integer.valueOf(i4));
        }

        @NonNull
        public a j(@NonNull String str) {
            return e(str);
        }
    }

    @NonNull
    public static a a() {
        return new g.b();
    }

    @Nullable
    public abstract ClientInfo b();

    @Nullable
    @a.InterfaceC0771a(name = "logEvent")
    public abstract List<k> c();

    @Nullable
    public abstract Integer d();

    @Nullable
    public abstract String e();

    @Nullable
    public abstract QosTier f();

    public abstract long g();

    public abstract long h();
}
