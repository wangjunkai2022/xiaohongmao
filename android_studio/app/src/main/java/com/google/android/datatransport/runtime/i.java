package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.a;
import com.google.auto.value.AutoValue;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: EventInternal.java */
@AutoValue
/* loaded from: classes2.dex */
public abstract class i {

    /* compiled from: EventInternal.java */
    @AutoValue.Builder
    /* loaded from: classes2.dex */
    public static abstract class a {
        public final a a(String str, int i4) {
            e().put(str, String.valueOf(i4));
            return this;
        }

        public final a b(String str, long j4) {
            e().put(str, String.valueOf(j4));
            return this;
        }

        public final a c(String str, String str2) {
            e().put(str, str2);
            return this;
        }

        public abstract i d();

        protected abstract Map<String, String> e();

        protected abstract a f(Map<String, String> map);

        public abstract a g(Integer num);

        public abstract a h(h hVar);

        public abstract a i(long j4);

        public abstract a j(String str);

        public abstract a k(long j4);
    }

    public static a a() {
        return new a.b().f(new HashMap());
    }

    public final String b(String str) {
        String str2 = c().get(str);
        return str2 == null ? "" : str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Map<String, String> c();

    @Nullable
    public abstract Integer d();

    public abstract h e();

    public abstract long f();

    public final int g(String str) {
        String str2 = c().get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final long h(String str) {
        String str2 = c().get(str);
        if (str2 == null) {
            return 0L;
        }
        return Long.valueOf(str2).longValue();
    }

    public final Map<String, String> i() {
        return Collections.unmodifiableMap(c());
    }

    public final String j(String str, String str2) {
        String str3 = c().get(str);
        return str3 == null ? str2 : str3;
    }

    @Deprecated
    public byte[] k() {
        return e().a();
    }

    public abstract String l();

    public abstract long m();

    public a n() {
        return new a.b().j(l()).g(d()).h(e()).i(f()).k(m()).f(new HashMap(c()));
    }
}
