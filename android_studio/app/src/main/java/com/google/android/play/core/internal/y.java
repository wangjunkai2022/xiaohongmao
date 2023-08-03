package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.splitcompat.f f31780a;

    /* renamed from: b  reason: collision with root package name */
    private final u f31781b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f31782c;

    /* renamed from: d  reason: collision with root package name */
    private final x f31783d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private PackageInfo f31784e;

    public y(Context context, com.google.android.play.core.splitcompat.f fVar, u uVar) {
        x xVar = new x(new com.google.android.play.core.splitcompat.b(fVar));
        this.f31780a = fVar;
        this.f31781b = uVar;
        this.f31782c = context;
        this.f31783d = xVar;
    }

    @Nullable
    private final PackageInfo d() {
        if (this.f31784e == null) {
            try {
                this.f31784e = this.f31782c.getPackageManager().getPackageInfo(this.f31782c.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
        return this.f31784e;
    }

    @Nullable
    private static X509Certificate e(Signature signature) {
        try {
            return (X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()));
        } catch (CertificateException e4) {
            Log.e("SplitCompat", "Cannot decode certificate.", e4);
            return null;
        }
    }

    public final boolean a(File[] fileArr) throws IOException, XmlPullParserException {
        long j4;
        PackageInfo d4 = d();
        if (Build.VERSION.SDK_INT >= 28) {
            j4 = d4.getLongVersionCode();
        } else {
            j4 = d4.versionCode;
        }
        AssetManager assetManager = (AssetManager) w0.c(AssetManager.class);
        int length = fileArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
            this.f31783d.b(assetManager, fileArr[length]);
        } while (j4 == this.f31783d.a());
        return false;
    }

    public final boolean b(List list) throws IOException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!this.f31780a.g(((Intent) it.next()).getStringExtra("split_id")).exists()) {
                return false;
            }
        }
        return true;
    }

    public final boolean c(File[] fileArr) {
        int i4;
        PackageInfo d4 = d();
        ArrayList<X509Certificate> arrayList = null;
        if (d4 != null && d4.signatures != null) {
            arrayList = new ArrayList();
            for (Signature signature : d4.signatures) {
                X509Certificate e4 = e(signature);
                if (e4 != null) {
                    arrayList.add(e4);
                }
            }
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            int length = fileArr.length;
            loop1: while (true) {
                length--;
                if (length < 0) {
                    return true;
                }
                try {
                    String absolutePath = fileArr[length].getAbsolutePath();
                    try {
                        X509Certificate[][] a10 = w1.a(absolutePath);
                        if (a10 == null || a10.length == 0 || a10[0].length == 0) {
                            break;
                        } else if (arrayList.isEmpty()) {
                            Log.e("SplitCompat", "No certificates found for app.");
                            break;
                        } else {
                            for (X509Certificate x509Certificate : arrayList) {
                                int length2 = a10.length;
                                while (i4 < length2) {
                                    i4 = a10[i4][0].equals(x509Certificate) ? 0 : i4 + 1;
                                }
                                Log.i("SplitCompat", "There's an app certificate that doesn't sign the split.");
                            }
                        }
                    } catch (Exception e10) {
                        StringBuilder sb = new StringBuilder(String.valueOf(absolutePath).length() + 32);
                        sb.append("Downloaded split ");
                        sb.append(absolutePath);
                        sb.append(" is not signed.");
                        Log.e("SplitCompat", sb.toString(), e10);
                    }
                } catch (Exception e11) {
                    Log.e("SplitCompat", "Split verification error.", e11);
                    return false;
                }
            }
        } else {
            Log.e("SplitCompat", "No app certificates found.");
            return false;
        }
        Log.e("SplitCompat", "Split verification failure.");
        return false;
    }
}
