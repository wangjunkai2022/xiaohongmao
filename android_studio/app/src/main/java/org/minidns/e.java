package org.minidns;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: MiniDnsInitialization.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f92794a;

    /* renamed from: b  reason: collision with root package name */
    static final String f92795b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Class<org.minidns.e>, java.lang.Class] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v8 */
    static {
        ?? r02 = e.class;
        f92794a = Logger.getLogger(r02.getName());
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(r02.getClassLoader().getResourceAsStream("org.minidns/version")));
                    try {
                        String readLine = bufferedReader2.readLine();
                        bufferedReader2.close();
                        r02 = readLine;
                    } catch (Exception e4) {
                        e = e4;
                        bufferedReader = bufferedReader2;
                        f92794a.log(Level.SEVERE, "Could not determine MiniDNS version", (Throwable) e);
                        r02 = "unkown";
                        if (bufferedReader != null) {
                            bufferedReader.close();
                            r02 = r02;
                        }
                        f92795b = r02;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e10) {
                                f92794a.log(Level.WARNING, "IOException closing stream", (Throwable) e10);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (IOException e12) {
            f92794a.log(Level.WARNING, "IOException closing stream", (Throwable) e12);
        }
        f92795b = r02;
    }
}
