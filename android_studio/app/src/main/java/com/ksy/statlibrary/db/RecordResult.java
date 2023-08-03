package com.ksy.statlibrary.db;

import android.util.Log;
import com.google.android.exoplayer2.text.ttml.d;
import com.ksy.statlibrary.util.Constants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class RecordResult {
    private static final String TAG = "RecordResult";
    public StringBuffer idBuffer = new StringBuffer();
    private JSONArray jsonArray = new JSONArray();
    private JSONObject headerJson = null;
    private String uniqname = null;

    public String getRecordValue() {
        if (this.headerJson == null) {
            Log.e(Constants.LOG_TAG, "RecordResult should put header first");
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("header", this.headerJson);
            jSONObject.putOpt(d.f25726p, this.jsonArray);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject.toString();
    }

    public String getUniqname() {
        return this.uniqname;
    }

    public void putHeader(JSONObject jSONObject) {
        this.headerJson = jSONObject;
    }

    public void putJson(String str) {
        try {
            this.jsonArray.put(new JSONObject(str));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    public void release() {
        if (this.idBuffer != null) {
            this.idBuffer = null;
        }
    }

    public void setUniqname(String str) {
        this.uniqname = str;
    }
}
