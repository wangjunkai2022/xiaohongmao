package com.ksy.statlibrary.util;

/* loaded from: classes3.dex */
public class Cpu {
    static final String SYSTEM_CPU_REGEX = "((?i)(sys(tem)?\\s+[0-9]{1,2}(\\.[0-9]{1,2})?\\%))|([0-9]{1,2}\\.[0-9]{1,2}\\%\\s+(?i)(sys(tem)?))";
    static final String USER_CPU_REGEX = "((?i)(use?r\\s+[0-9]{1,2}(\\.[0-9]{1,2})?\\%))|([0-9]{1,2}\\.[0-9]{1,2}\\%\\s+(?i)(use?r))";
    private String m_Package;
    public String m_sProcessCpuUsage;
    private String m_sTopResults = null;
    private float m_fIdleCpuUsage = 0.0f;
    private float m_fSystemCpuUsage = 0.0f;
    private float m_fUserCpuUsage = 0.0f;

    public Cpu() {
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0085 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void getCPUInfo() {
        /*
            r6 = this;
            java.lang.String r0 = "exp 22 = "
            java.lang.String r1 = "KSY_ANDROID_LOG"
            java.lang.String r2 = ""
            r6.m_sTopResults = r2
            r2 = 0
            java.lang.Runtime r3 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            java.lang.String r4 = "top -n 1 -d 1"
            java.lang.Process r3 = r3.exec(r4)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            r4.<init>()     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            java.io.InputStream r3 = r3.getInputStream()     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L4d java.io.IOException -> L51
            java.lang.String r2 = r6.m_Package     // Catch: java.io.IOException -> L4b java.lang.Throwable -> L82
            if (r2 == 0) goto L3b
        L2a:
            java.lang.String r2 = r4.readLine()     // Catch: java.io.IOException -> L4b java.lang.Throwable -> L82
            if (r2 == 0) goto L40
            java.lang.String r3 = r6.m_Package     // Catch: java.io.IOException -> L4b java.lang.Throwable -> L82
            int r3 = r2.indexOf(r3)     // Catch: java.io.IOException -> L4b java.lang.Throwable -> L82
            if (r3 < 0) goto L2a
            r6.m_sTopResults = r2     // Catch: java.io.IOException -> L4b java.lang.Throwable -> L82
            goto L40
        L3b:
            java.lang.String r2 = "m_Package is  null "
            android.util.Log.e(r1, r2)     // Catch: java.io.IOException -> L4b java.lang.Throwable -> L82
        L40:
            r4.close()     // Catch: java.io.IOException -> L44
            goto L81
        L44:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            goto L74
        L4b:
            r2 = move-exception
            goto L54
        L4d:
            r3 = move-exception
            r4 = r2
            r2 = r3
            goto L83
        L51:
            r3 = move-exception
            r4 = r2
            r2 = r3
        L54:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82
            r3.<init>()     // Catch: java.lang.Throwable -> L82
            java.lang.String r5 = "exp 11 = "
            r3.append(r5)     // Catch: java.lang.Throwable -> L82
            r3.append(r2)     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = r3.toString()     // Catch: java.lang.Throwable -> L82
            android.util.Log.e(r1, r2)     // Catch: java.lang.Throwable -> L82
            if (r4 == 0) goto L81
            r4.close()     // Catch: java.io.IOException -> L6e
            goto L81
        L6e:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
        L74:
            r3.append(r0)
            r3.append(r2)
            java.lang.String r0 = r3.toString()
            android.util.Log.e(r1, r0)
        L81:
            return
        L82:
            r2 = move-exception
        L83:
            if (r4 == 0) goto L9c
            r4.close()     // Catch: java.io.IOException -> L89
            goto L9c
        L89:
            r3 = move-exception
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r0)
            r4.append(r3)
            java.lang.String r0 = r4.toString()
            android.util.Log.e(r1, r0)
        L9c:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksy.statlibrary.util.Cpu.getCPUInfo():void");
    }

    public float getIdle() {
        return this.m_fIdleCpuUsage;
    }

    public String getProcessCpuUsage() {
        return this.m_sProcessCpuUsage;
    }

    public float getSystemUsage() {
        return this.m_fSystemCpuUsage;
    }

    public float getUserUsage() {
        return this.m_fUserCpuUsage;
    }

    public void parseTopResults() {
        String[] split;
        getCPUInfo();
        String str = this.m_sTopResults;
        if (str == null || (split = str.split(" ")) == null || split.length <= 0) {
            return;
        }
        for (String str2 : split) {
            if (str2.indexOf("%") > 0) {
                this.m_sProcessCpuUsage = str2;
                this.m_sProcessCpuUsage = str2.replaceAll("%", "");
                return;
            }
        }
    }

    public String summaryString() {
        return ((("CPU Information: \n") + "User CPU utilized: " + this.m_fUserCpuUsage + "%\n") + "System CPU utilized: " + this.m_fSystemCpuUsage + "%\n") + "Idle CPU: " + this.m_fIdleCpuUsage + "%\n";
    }

    public Cpu(String str) {
        this.m_Package = str;
    }
}
