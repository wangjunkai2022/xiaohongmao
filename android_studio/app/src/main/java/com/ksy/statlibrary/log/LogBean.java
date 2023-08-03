package com.ksy.statlibrary.log;

/* loaded from: classes3.dex */
public class LogBean {
    private final String mLogContent;
    private final int mLogId;

    public LogBean(int i4, String str) {
        this.mLogId = i4;
        this.mLogContent = str;
    }

    public String getContent() {
        return this.mLogContent;
    }

    public int getId() {
        return this.mLogId;
    }
}
