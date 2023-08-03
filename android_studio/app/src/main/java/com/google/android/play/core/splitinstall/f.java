package com.google.android.play.core.splitinstall;

import android.app.PendingIntent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class f {
    public static f b(int i4, @g3.b int i10, @g3.a int i11, long j4, long j10, List<String> list, List<String> list2) {
        if (i10 != 8) {
            return new h(i4, i10, i11, j4, j10, list, list2, null, null);
        }
        throw new IllegalArgumentException("REQUIRES_USER_CONFIRMATION state not supported.");
    }

    public static f n(Bundle bundle) {
        return new h(bundle.getInt("session_id"), bundle.getInt("status"), bundle.getInt("error_code"), bundle.getLong("bytes_downloaded"), bundle.getLong("total_bytes_to_download"), bundle.getStringArrayList("module_names"), bundle.getStringArrayList("languages"), (PendingIntent) bundle.getParcelable("user_confirmation_intent"), bundle.getParcelableArrayList("split_file_intents"));
    }

    public abstract long a();

    @g3.a
    public abstract int c();

    public boolean d() {
        int i4 = i();
        return i4 == 0 || i4 == 5 || i4 == 6 || i4 == 7;
    }

    @NonNull
    public List<String> e() {
        return k() != null ? new ArrayList(k()) : new ArrayList();
    }

    @NonNull
    public List<String> f() {
        return l() != null ? new ArrayList(l()) : new ArrayList();
    }

    @Nullable
    @Deprecated
    public abstract PendingIntent g();

    public abstract int h();

    @g3.b
    public abstract int i();

    public abstract long j();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public abstract List k();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public abstract List l();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public abstract List m();
}
