package com.ksyun.media.player;

/* compiled from: KSYLibLoader.java */
/* loaded from: classes3.dex */
public class e {
    public static boolean a(String str) {
        try {
            System.loadLibrary(str);
            return true;
        } catch (SecurityException | UnsatisfiedLinkError unused) {
            return false;
        }
    }

    public static boolean a(String str, String str2) {
        try {
            System.load(str + "lib" + str2 + ".so");
            return true;
        } catch (SecurityException | UnsatisfiedLinkError unused) {
            return false;
        }
    }
}
