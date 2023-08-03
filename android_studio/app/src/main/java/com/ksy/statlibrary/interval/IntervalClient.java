package com.ksy.statlibrary.interval;

import android.content.Context;

/* loaded from: classes3.dex */
public class IntervalClient {
    private static IntervalClient _instance;
    private static Context mContenxt;
    private IntervalTask mIntervalTask;
    private IntervalResultListener mListener;

    public static IntervalClient getInstance(Context context) {
        if (_instance == null) {
            mContenxt = context;
            _instance = new IntervalClient();
        }
        return _instance;
    }

    private void release() {
        IntervalTask intervalTask = this.mIntervalTask;
        if (intervalTask != null) {
            try {
                intervalTask.join();
            } catch (InterruptedException e4) {
                e4.printStackTrace();
            }
        }
    }

    public static void unInstance() {
        IntervalClient intervalClient = _instance;
        if (intervalClient != null) {
            intervalClient.release();
            _instance = null;
        }
    }

    public void sendIntervalRequest(String str, IntervalResultListener intervalResultListener) {
        IntervalTask intervalTask = new IntervalTask(intervalResultListener, str);
        this.mIntervalTask = intervalTask;
        intervalTask.start();
    }
}
