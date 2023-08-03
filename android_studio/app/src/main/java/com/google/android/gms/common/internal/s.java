package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public final class s {

    /* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
    @u2.a
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f29184a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f29185b;

        /* synthetic */ a(Object obj, m1 m1Var) {
            u.k(obj);
            this.f29185b = obj;
            this.f29184a = new ArrayList();
        }

        @NonNull
        @u2.a
        public a a(@NonNull String str, @Nullable Object obj) {
            List<String> list = this.f29184a;
            u.k(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(str.length() + 1 + valueOf.length());
            sb.append(str);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @NonNull
        @u2.a
        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f29185b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f29184a.size();
            for (int i4 = 0; i4 < size; i4++) {
                sb.append(this.f29184a.get(i4));
                if (i4 < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private s() {
        throw new AssertionError("Uninstantiable");
    }

    @u2.a
    public static boolean a(@NonNull Bundle bundle, @NonNull Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == bundle2;
        } else if (bundle.size() != bundle2.size()) {
            return false;
        } else {
            Set<String> keySet = bundle.keySet();
            if (keySet.containsAll(bundle2.keySet())) {
                for (String str : keySet) {
                    if (!b(bundle.get(str), bundle2.get(str))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
    }

    @u2.a
    public static boolean b(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    @u2.a
    public static int c(@NonNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @NonNull
    @u2.a
    public static a d(@NonNull Object obj) {
        return new a(obj, null);
    }
}
