package com.ksy.statlibrary.log;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class LogParams {
    String accesskey;
    JSONObject header;
    String secretkey;
    String uniquename;

    public LogParams() {
    }

    public LogParams(JSONObject jSONObject, String str, String str2, String str3) {
        this.header = jSONObject;
        this.secretkey = str2;
        this.uniquename = str3;
        this.accesskey = str;
    }
}
