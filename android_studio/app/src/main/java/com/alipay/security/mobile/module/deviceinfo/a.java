package com.alipay.security.mobile.module.deviceinfo;

import android.content.Context;
import android.content.pm.PackageInfo;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f7016a = new a();

    private a() {
    }

    private static byte[] a(Context context, String str) {
        try {
            for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                if (packageInfo.packageName.equals(str)) {
                    return packageInfo.signatures[0].toByteArray();
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static a b() {
        return f7016a;
    }

    public byte[] c(Context context, String str) {
        try {
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(a(context, str)))).getPublicKey().getEncoded();
        } catch (Exception unused) {
            return null;
        }
    }
}
