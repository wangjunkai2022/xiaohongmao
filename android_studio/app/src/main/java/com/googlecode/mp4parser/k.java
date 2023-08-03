package com.googlecode.mp4parser;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.util.logging.Logger;

/* compiled from: Version.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f36968a = Logger.getLogger(k.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final String f36969b;

    static {
        String str;
        try {
            str = new LineNumberReader(new InputStreamReader(k.class.getResourceAsStream("/version.txt"))).readLine();
        } catch (IOException e4) {
            f36968a.warning(e4.getMessage());
            str = "unknown";
        }
        f36969b = str;
    }
}
