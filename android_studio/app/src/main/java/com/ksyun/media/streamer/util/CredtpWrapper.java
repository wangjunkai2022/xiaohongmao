package com.ksyun.media.streamer.util;

import android.util.Log;
import com.ksyun.media.streamer.framework.CredtpModel;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class CredtpWrapper {

    /* renamed from: a  reason: collision with root package name */
    private static String f46711a = "CredtpWrapper";

    /* renamed from: b  reason: collision with root package name */
    private static CredtpWrapper f46712b;

    /* renamed from: c  reason: collision with root package name */
    private List<CredtpModel> f46713c = getContentList();

    /* renamed from: d  reason: collision with root package name */
    private Map<Integer, CredtpModel> f46714d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private Map<Integer, String> f46715e = new HashMap();

    static {
        LibraryLoader.load();
    }

    private CredtpWrapper() {
        int size = this.f46713c.size();
        if (this.f46713c != null) {
            for (int i4 = 0; i4 < size; i4++) {
                CredtpModel credtpModel = this.f46713c.get(i4);
                this.f46714d.put(Integer.valueOf(credtpModel.getType()), credtpModel);
            }
        }
    }

    public static CredtpWrapper a() {
        if (f46712b == null) {
            synchronized (CredtpWrapper.class) {
                if (f46712b == null) {
                    f46712b = new CredtpWrapper();
                }
            }
        }
        return f46712b;
    }

    private native List<CredtpModel> getContentList();

    public String a(int i4) {
        byte[] bArr = new byte[0];
        if (this.f46715e.containsKey(Integer.valueOf(i4))) {
            return this.f46715e.get(Integer.valueOf(i4));
        }
        if (this.f46714d.containsKey(Integer.valueOf(i4))) {
            CredtpModel credtpModel = this.f46714d.get(Integer.valueOf(i4));
            try {
                bArr = b.a(d.a(credtpModel.getBody().toCharArray()), credtpModel.getKey().getBytes("ISO-8859-1"));
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
            String str = new String(bArr);
            a(i4, str);
            return str;
        }
        String str2 = f46711a;
        Log.w(str2, "do not have the filter shader:" + String.valueOf(i4));
        return null;
    }

    private void a(int i4, String str) {
        this.f46715e.put(Integer.valueOf(i4), str);
    }
}
