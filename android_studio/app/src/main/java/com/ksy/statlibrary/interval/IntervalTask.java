package com.ksy.statlibrary.interval;

import android.util.Log;
import com.ksy.statlibrary.log.LogClient;
import com.ksy.statlibrary.util.Constants;
import com.ksy.statlibrary.util.PreferenceUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class IntervalTask extends Thread {
    private static final int READ_TIME_OUT_MILLS = 5000;
    public static final int TIMEOUT_MILLIS = 5000;
    private final String mAuthUrlSuffix;
    private IntervalResultListener mCallback;

    public IntervalTask(IntervalResultListener intervalResultListener, String str) {
        this.mCallback = intervalResultListener;
        this.mAuthUrlSuffix = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        try {
            URL url = new URL(Constants.LOG_SERVER_INTERVAL_URL + this.mAuthUrlSuffix);
            if (LogClient.getInstance().isEnableLog()) {
                Log.d("auth", "url = " + url.toString());
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(5000);
            httpURLConnection.setReadTimeout(5000);
            if (httpURLConnection.getResponseCode() == 200) {
                InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                StringBuffer stringBuffer = new StringBuffer("");
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        stringBuffer.append(readLine);
                    } else {
                        try {
                            break;
                        } catch (JSONException e4) {
                            e4.printStackTrace();
                            IntervalResultListener intervalResultListener = this.mCallback;
                            if (intervalResultListener != null) {
                                intervalResultListener.onGetIntervalFailure(2000, "json result parse failed");
                            }
                        }
                    }
                }
                JSONObject jSONObject = new JSONObject(stringBuffer.toString());
                int i4 = jSONObject.getInt("errno");
                if (i4 == 0) {
                    int i10 = jSONObject.getInt(PreferenceUtil.INTERVAL);
                    IntervalResultListener intervalResultListener2 = this.mCallback;
                    if (intervalResultListener2 != null) {
                        intervalResultListener2.onGetIntervalSuccess(i4, i10);
                        PreferenceUtil.saveInterval(i10);
                        PreferenceUtil.saveLastIntervalTime(System.currentTimeMillis());
                    }
                } else {
                    String string = jSONObject.getString("errmsg");
                    IntervalResultListener intervalResultListener3 = this.mCallback;
                    if (intervalResultListener3 != null) {
                        intervalResultListener3.onGetIntervalFailure(i4, string);
                    }
                }
                inputStreamReader.close();
                bufferedReader.close();
            } else {
                int responseCode = httpURLConnection.getResponseCode();
                IntervalResultListener intervalResultListener4 = this.mCallback;
                if (intervalResultListener4 != null) {
                    intervalResultListener4.onGetIntervalFailure(responseCode, null);
                }
            }
            httpURLConnection.disconnect();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }
}
