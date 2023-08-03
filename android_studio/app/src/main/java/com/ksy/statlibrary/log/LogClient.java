package com.ksy.statlibrary.log;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.upstream.w;
import com.ksy.statlibrary.db.DBManager;
import com.ksy.statlibrary.db.RecordResult;
import com.ksy.statlibrary.interval.IntervalClient;
import com.ksy.statlibrary.interval.IntervalResultListener;
import com.ksy.statlibrary.util.AuthUtils;
import com.ksy.statlibrary.util.Constants;
import com.ksy.statlibrary.util.ContextUtil;
import com.ksy.statlibrary.util.GzipUtil;
import com.ksy.statlibrary.util.NetworkUtil;
import com.ksy.statlibrary.util.PreferenceUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import master.flame.danmaku.danmaku.model.d;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class LogClient {
    private static final int CONNECTION_TIMEOUT = 30000;
    private static final int LOG_CLIENT_STARTED = 1;
    private static final int LOG_CLIENT_UNINIT = 0;
    private static final int SO_TIMEOUT = 20000;
    private static final String TAG = "LogClient";
    private static Context mContext;
    private static LogClient mInstance;
    private static Object mLockObject = new Object();
    private String mExpire;
    private boolean mIsNeedloop;
    private int mSendCount;
    private Timer mTimer;
    private int LOG_ONCE_LIMIT = 100;
    private long TIMER_INTERVAL = w.f27407d;
    private boolean mEnableLog = false;
    private ExecutorService mExec = Executors.newSingleThreadExecutor();
    private ExecutorService mExecTemp = Executors.newSingleThreadExecutor();
    private String LOG_SERVER_MONITOR_URL_FOR_TEST = null;
    private HashMap<String, LogParams> mReportParams = new HashMap<>();
    private AtomicInteger mState = new AtomicInteger(0);

    private LogClient(Context context) {
        this.mExpire = null;
        mContext = context;
        PreferenceUtil.init(context);
        this.mExpire = String.valueOf((System.currentTimeMillis() + 86400000) / 1000);
    }

    public static byte[] StringToBt(String str) {
        return StringToByte(str, "UTF-8");
    }

    private static byte[] StringToByte(String str, String str2) {
        if (str != null) {
            try {
                if (!str.trim().equals("")) {
                    return str.getBytes(str2);
                }
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
                return null;
            }
        }
        return new byte[0];
    }

    private String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    try {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        sb.append(readLine + d.M);
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                } catch (IOException e10) {
                    e10.printStackTrace();
                    inputStream.close();
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                throw th;
            }
        }
        inputStream.close();
        return sb.toString();
    }

    public static LogClient getInstance() {
        if (mInstance == null) {
            synchronized (mLockObject) {
                if (mInstance == null) {
                    mInstance = new LogClient();
                }
            }
        }
        return mInstance;
    }

    private LogParams getLogParams(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.w(TAG, "your uniquename is null");
            return null;
        }
        for (String str2 : new CopyOnWriteArrayList(this.mReportParams.keySet())) {
            if (!TextUtils.isEmpty(str2) && str2.equals(str)) {
                return this.mReportParams.get(str2);
            }
        }
        Log.w(TAG, "do not have your uniquename:" + str);
        return null;
    }

    private boolean jsonCheck(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        try {
            new JSONObject(str);
            return true;
        } catch (JSONException e4) {
            if (this.mEnableLog) {
                Log.e(Constants.LOG_TAG, "jsonCheck  e ==" + e4);
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRecord(int i4, String str) {
        StringBuffer stringBuffer;
        int i10 = this.LOG_ONCE_LIMIT;
        boolean z9 = i4 >= i10;
        this.mIsNeedloop = z9;
        if (!z9) {
            i10 = i4;
        }
        this.mSendCount = i10;
        RecordResult recordResult = new RecordResult();
        DBManager.getInstance(mContext).getRecords(this.mSendCount, recordResult, str);
        if (!setHeaderJson(recordResult, recordResult.getUniqname()) || (stringBuffer = recordResult.idBuffer) == null || TextUtils.isEmpty(stringBuffer.toString())) {
            return;
        }
        sendRecordJson(recordResult, this.mSendCount, i4, this.mIsNeedloop, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRecordJson(RecordResult recordResult, int i4, int i10, boolean z9, boolean z10) {
        if (recordResult == null) {
            return;
        }
        String recordValue = recordResult.getRecordValue();
        if (recordValue != null && !TextUtils.isEmpty(recordResult.getUniqname())) {
            if (this.mEnableLog) {
                Log.d(Constants.LOG_TAG, "before jsonString =" + recordValue);
            }
            try {
                byte[] byteArray = GzipUtil.compress(recordValue).toByteArray();
                ByteArrayEntity byteArrayEntity = new ByteArrayEntity(byteArray);
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
                defaultHttpClient.getParams().setParameter("http.connection.timeout", 30000);
                defaultHttpClient.getParams().setParameter("http.socket.timeout", 20000);
                LogParams logParams = getLogParams(recordResult.getUniqname());
                if (logParams != null) {
                    String str = !TextUtils.isEmpty(this.LOG_SERVER_MONITOR_URL_FOR_TEST) ? this.LOG_SERVER_MONITOR_URL_FOR_TEST : Constants.LOG_SERVER_MONITOR_URL;
                    HttpPost httpPost = new HttpPost(str + AuthUtils.getAuthUrlSuffix(logParams.accesskey, logParams.secretkey, this.mExpire, byteArray, recordResult.getUniqname()));
                    httpPost.addHeader("accept-encoding", "deflate");
                    httpPost.addHeader("content-encoding", "gzip");
                    try {
                        httpPost.setEntity(byteArrayEntity);
                        try {
                            HttpResponse execute = defaultHttpClient.execute(httpPost);
                            String convertStreamToString = convertStreamToString(execute.getEntity().getContent());
                            Log.d(Constants.LOG_TAG, "result = " + convertStreamToString);
                            if (execute.getStatusLine().getStatusCode() != 200) {
                                if (this.mEnableLog) {
                                    Log.e(Constants.LOG_TAG, "response.getStatusLine().getStatusCode()=" + execute.getStatusLine().getStatusCode());
                                }
                            } else if (z10) {
                                if (this.mEnableLog) {
                                    Log.d(Constants.LOG_TAG, "send once successfully ,thread will be destroy~");
                                }
                            } else {
                                DBManager.getInstance(mContext).deleteLogs(recordResult.idBuffer.toString());
                                recordResult.release();
                                if (!z9) {
                                    sendRecord(i10, recordResult.getUniqname());
                                    return;
                                }
                                int i11 = i10 - i4;
                                if (i11 > 0) {
                                    sendRecord(i11, recordResult.getUniqname());
                                }
                            }
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                if (this.mEnableLog) {
                    Log.e(Constants.LOG_TAG, "gzip is failed, send log exception e" + e11);
                }
            }
        } else if (this.mEnableLog) {
            Log.e(Constants.LOG_TAG, "sendRecordJson() invalid data,drop record ");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean setHeaderJson(RecordResult recordResult, String str) {
        JSONObject jSONObject;
        LogParams logParams = getLogParams(str);
        if (str != null && logParams != null && (jSONObject = logParams.header) != null) {
            recordResult.putHeader(jSONObject);
            return true;
        } else if (this.mEnableLog) {
            Log.e(Constants.LOG_TAG, "setHeaderJson().. uniqname==null drop..");
            return false;
        } else {
            return false;
        }
    }

    public static void unInstance() {
        LogClient logClient = mInstance;
        if (logClient != null) {
            logClient.release();
            mInstance = null;
        }
    }

    public void addReportParam(LogParams logParams) {
        this.mReportParams.put(logParams.uniquename, logParams);
    }

    public String getBuildVersion() {
        return Constants.BUILD_VERSION;
    }

    public int getBuildVersionNumber() {
        return 200;
    }

    public int getLocalIntervalTime() {
        Context context = mContext;
        if (context != null) {
            PreferenceUtil.init(context);
            return PreferenceUtil.getIntervalTime();
        }
        return 9999;
    }

    public int getState() {
        return this.mState.get();
    }

    public boolean isEnableLog() {
        return this.mEnableLog;
    }

    public void put(String str, String str2) throws Exception {
        put(str, str2, false);
    }

    public void release() {
        Timer timer;
        if (this.mState.get() == 1 && (timer = this.mTimer) != null) {
            timer.cancel();
            this.mState.set(0);
        }
        DBManager.unInstance();
        IntervalClient.unInstance();
    }

    public void sendIntervalRequest(IntervalResultListener intervalResultListener, String str) {
        if (intervalResultListener != null) {
            if (NetworkUtil.isNetworkAvailable(mContext)) {
                PreferenceUtil.init(mContext);
                if (PreferenceUtil.isAfterTwoWeek(System.currentTimeMillis())) {
                    LogParams logParams = getLogParams(str);
                    if (logParams != null) {
                        IntervalClient.getInstance(mContext).sendIntervalRequest(AuthUtils.getAuthUrlIntervalSuffix(logParams.accesskey, logParams.secretkey, this.mExpire, str), intervalResultListener);
                        return;
                    }
                    intervalResultListener.onGetIntervalSuccess(-100, PreferenceUtil.getIntervalTime());
                    return;
                }
                intervalResultListener.onGetIntervalSuccess(-1000, PreferenceUtil.getIntervalTime());
                return;
            }
            Log.e(Constants.LOG_TAG, "Get log interval dismissed, please check your network");
            return;
        }
        Log.e(Constants.LOG_TAG, "Get log interval result listener is null");
    }

    public void setEnableLog(boolean z9) {
        this.mEnableLog = z9;
    }

    public LogClient setLOG_ONCE_LIMIT(int i4) {
        this.LOG_ONCE_LIMIT = i4;
        return this;
    }

    public LogClient setTIMER_INTERVAL(long j4) {
        this.TIMER_INTERVAL = j4;
        return this;
    }

    public void setTestServerMonitorURL(String str) {
        this.LOG_SERVER_MONITOR_URL_FOR_TEST = str;
    }

    public void start() {
        if (this.mState.get() == 1) {
            return;
        }
        this.mState.set(1);
        Timer timer = new Timer();
        this.mTimer = timer;
        TimerTask timerTask = new TimerTask() { // from class: com.ksy.statlibrary.log.LogClient.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (LogClient.mContext == null) {
                    return;
                }
                for (String str : new CopyOnWriteArrayList(LogClient.this.mReportParams.keySet())) {
                    int queryCount = DBManager.getInstance(LogClient.mContext).queryCount(str);
                    if (LogClient.this.mEnableLog) {
                        Log.d(Constants.LOG_TAG, str + " send schedule,log count = " + queryCount);
                    }
                    if (NetworkUtil.isNetworkAvailable(LogClient.mContext)) {
                        if (NetworkUtil.getNetWorkType(LogClient.mContext) == 1) {
                            if (queryCount > 0) {
                                LogClient.this.sendRecord(queryCount, str);
                            } else if (LogClient.this.mEnableLog) {
                                Log.d(Constants.LOG_TAG, "no record");
                            }
                        } else if (LogClient.this.mEnableLog) {
                            Log.e(Constants.LOG_TAG, "network valiable,type not wifi");
                        }
                    } else {
                        if (LogClient.this.mEnableLog) {
                            Log.e(Constants.LOG_TAG, "network unvaliable");
                        }
                        LogClient.this.stop();
                    }
                }
            }
        };
        long j4 = this.TIMER_INTERVAL;
        timer.schedule(timerTask, j4, j4);
    }

    public void stop() {
        if (this.mState.get() == 0) {
            return;
        }
        Timer timer = this.mTimer;
        if (timer != null) {
            timer.cancel();
        }
        this.mState.set(0);
    }

    public void put(final String str, final String str2, boolean z9) throws Exception {
        if (mContext == null) {
            return;
        }
        if (!jsonCheck(str, str2)) {
            throw new Exception("put() new log format is not correct, sdk will ignore it");
        }
        if (z9) {
            this.mExec.submit(new Runnable() { // from class: com.ksy.statlibrary.log.LogClient.2
                @Override // java.lang.Runnable
                public void run() {
                    RecordResult recordResult = new RecordResult();
                    recordResult.putJson(str);
                    recordResult.setUniqname(str2);
                    if (LogClient.this.setHeaderJson(recordResult, str2)) {
                        LogClient.this.sendRecordJson(recordResult, 0, 0, false, true);
                        if (LogClient.this.mEnableLog) {
                            Log.e(Constants.LOG_TAG, "put" + recordResult.getRecordValue() + " uniqname=" + str2);
                        }
                    }
                }
            });
        } else {
            this.mExecTemp.submit(new Runnable() { // from class: com.ksy.statlibrary.log.LogClient.3
                @Override // java.lang.Runnable
                public void run() {
                    DBManager.getInstance(LogClient.mContext).insertLog(str, str2);
                }
            });
        }
    }

    public static LogClient getInstance(Context context) {
        if (mInstance == null) {
            synchronized (mLockObject) {
                if (mInstance == null) {
                    mInstance = new LogClient(context);
                }
            }
        }
        return mInstance;
    }

    private LogClient() {
        this.mExpire = null;
        Context context = ContextUtil.getContext();
        mContext = context;
        PreferenceUtil.init(context);
        this.mExpire = String.valueOf((System.currentTimeMillis() + 86400000) / 1000);
    }
}
