package org.minidns.util;

/* compiled from: PlatformDetection.java */
/* loaded from: classes5.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f93040a;

    public static boolean a() {
        if (f93040a == null) {
            try {
                Class.forName("android.Manifest");
                f93040a = Boolean.TRUE;
            } catch (Exception unused) {
                f93040a = Boolean.FALSE;
            }
        }
        return f93040a.booleanValue();
    }
}
