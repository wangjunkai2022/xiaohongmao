package com.ksyun.media.streamer.util;

import java.util.List;

/* loaded from: classes3.dex */
public class StringWrapper {
    public static int COUNT_ACCESS_KEY = 2;
    public static int COUNT_SECRET_KEY = 3;
    public static int LOG_ACCESS_KEY = 0;
    public static int LOG_SECRET_KEY = 1;

    /* renamed from: b  reason: collision with root package name */
    private static int f46724b;

    /* renamed from: c  reason: collision with root package name */
    private static StringWrapper f46725c;

    /* renamed from: a  reason: collision with root package name */
    List<String> f46726a = getStringList();

    static {
        LibraryLoader.load();
    }

    public static StringWrapper getInstance() {
        StringWrapper stringWrapper;
        synchronized (CredtpWrapper.class) {
            f46724b++;
            if (f46725c == null) {
                synchronized (CredtpWrapper.class) {
                    if (f46725c == null) {
                        f46725c = new StringWrapper();
                    }
                }
            }
            stringWrapper = f46725c;
        }
        return stringWrapper;
    }

    private native List<String> getStringList();

    public static void unInitInstance() {
        synchronized (CredtpWrapper.class) {
            int i4 = f46724b - 1;
            f46724b = i4;
            if (f46725c != null && i4 == 0) {
                f46725c = null;
            }
        }
    }

    public String getStringInfo(int i4) {
        List<String> list = this.f46726a;
        if (list != null) {
            return list.get(i4);
        }
        return null;
    }
}
