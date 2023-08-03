package com.google.android.play.core.splitinstall.testing;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.play.core.common.LocalTestingException;
import com.google.android.play.core.internal.n1;
import com.google.android.play.core.splitinstall.f1;
import com.google.android.play.core.splitinstall.h1;
import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static a f31954a;

    private b() {
    }

    public static a a(Context context) {
        try {
            File zzb = h1.a(context).zzb();
            if (zzb != null) {
                if (zzb.exists()) {
                    return b(context, zzb);
                }
                throw new LocalTestingException(String.format("Local testing directory not found: %s", zzb));
            }
            throw new LocalTestingException("Failed to retrieve local testing directory path");
        } catch (Exception e4) {
            throw new RuntimeException(e4);
        }
    }

    public static synchronized a b(Context context, File file) {
        a aVar;
        synchronized (b.class) {
            a aVar2 = f31954a;
            if (aVar2 == null) {
                f31954a = c(context, file);
            } else if (!aVar2.r().getAbsolutePath().equals(file.getAbsolutePath())) {
                throw new RuntimeException(String.format("Different module directories used to initialize FakeSplitInstallManager: '%s' and '%s'", f31954a.r().getAbsolutePath(), file.getAbsolutePath()));
            }
            aVar = f31954a;
        }
        return aVar;
    }

    public static a c(Context context, final File file) {
        com.google.android.play.core.splitcompat.a.a(context);
        return new a(context, file, new f1(context, context.getPackageName()), new n1() { // from class: com.google.android.play.core.splitinstall.testing.s
            @Override // com.google.android.play.core.internal.n1
            public final Object zza() {
                return a0.a(file);
            }
        });
    }
}
