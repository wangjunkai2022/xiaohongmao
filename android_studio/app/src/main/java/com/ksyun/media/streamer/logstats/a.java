package com.ksyun.media.streamer.logstats;

import android.content.Context;
import android.os.Build;
import com.ksy.statlibrary.log.LogClient;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: StatsLogMaker.java */
/* loaded from: classes3.dex */
public class a {
    public static JSONObject a(Context context) {
        JSONObject jSONObject = null;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("sdk_type", StatsConstant.SDK_TYPE_VALUE);
                jSONObject2.put("sdk_ver", StatsConstant.SDK_VERSION_VALUE);
                jSONObject2.put("platform", "android");
                jSONObject2.put("os_ver", Build.VERSION.RELEASE);
                if (context != null) {
                    jSONObject2.put("pkg", context.getPackageName());
                } else {
                    jSONObject2.put("pkg", "UNKNOWN");
                }
                jSONObject2.put("dev_model", Build.MODEL);
                String a10 = c.a(context);
                if (a10 != null) {
                    jSONObject2.put("dev_id", a10);
                } else {
                    jSONObject2.put("dev_id", "UNKNOWN");
                }
                jSONObject2.put("log_ver", LogClient.getInstance().getBuildVersion());
                jSONObject2.put("log_vn", 102);
                return jSONObject2;
            } catch (JSONException e4) {
                e = e4;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e10) {
            e = e10;
        }
    }

    public static JSONObject b(Context context) {
        return a(context);
    }

    private static int c(int i4) {
        int o9 = i4 - b.a().o();
        b.a().d(i4);
        return o9;
    }

    private static int d(int i4) {
        return Math.min(i4, b.a().t());
    }

    private static int e(int i4) {
        int t9 = b.a().t();
        b.a().f(i4);
        return Math.max(i4, t9);
    }

    private static int f(int i4) {
        b.a().a(i4);
        return (i4 - b.a().k()) / 5;
    }

    public static JSONObject b(long j4, Context context, String... strArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_AUDIO_FILTER);
            if (strArr.length > 0) {
                StringBuilder sb = new StringBuilder(strArr[0]);
                if (strArr.length > 1) {
                    for (int i4 = 1; i4 < strArr.length; i4++) {
                        if (strArr[i4] != null) {
                            sb.append("_");
                            sb.append(strArr[i4]);
                        }
                    }
                }
                jSONObject.put("net_type", c.b(context));
                jSONObject.put(StatsConstant.AUDIO_FILTER_TYPE, sb.toString());
            }
            jSONObject.put("date", j4);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static long c(long j4) {
        long u9 = j4 - b.a().u();
        b.a().d(j4);
        return u9;
    }

    private static long c() {
        return b.a().f();
    }

    public static JSONObject a(String str, String str2, String str3, Context context, String str4, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_id", str2);
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_START_STREAMING);
            jSONObject.put("action_id", str3);
            jSONObject.put("streamId", str3);
            jSONObject.put("url", str);
            jSONObject.put(StatsConstant.STREAM_STATUS, "ok");
            jSONObject.put("net_type", c.b(context));
            jSONObject.put("net_des", c.c(context));
            if (str4 == null) {
                str4 = "unknown";
            }
            jSONObject.put("serverIp", str4);
            jSONObject.put("date", j4);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    private static int b(int i4) {
        int n9 = i4 - b.a().n();
        b.a().c(i4);
        return n9;
    }

    private static long b(long j4) {
        long s9 = j4 - b.a().s();
        b.a().c(j4);
        return s9;
    }

    private static int b() {
        return b.a().i();
    }

    public static JSONObject a(String str, String str2, String str3, Context context, String str4, boolean z9, int i4, long j4, int i10, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            float a10 = a(z9, i4);
            jSONObject.put("_id", str2);
            jSONObject.put("type", 100);
            jSONObject.put("body_type", "event");
            jSONObject.put(StatsConstant.EVENT_TYPE, StatsConstant.EVENT_TYPE_AUTO_BITRATE);
            jSONObject.put("action_id", str3);
            jSONObject.put("streamId", str3);
            jSONObject.put("url", str);
            if (z9) {
                jSONObject.put(StatsConstant.STREAM_STATUS, StatsConstant.EVENT_TYPE_SUB_AUTOBITRATE_RAISE);
            } else {
                jSONObject.put(StatsConstant.STREAM_STATUS, StatsConstant.EVENT_TYPE_SUB_AUTOBITRATE_DROP);
            }
            jSONObject.put(StatsConstant.EVENT_AUTOBITRATE_THRESHOLD, a10);
            jSONObject.put(StatsConstant.EVENT_AUTOBITRATE_BANDWIDTH, j4);
            jSONObject.put("net_type", c.b(context));
            jSONObject.put("net_des", c.c(context));
            if (str4 == null) {
                str4 = "unknown";
            }
            jSONObject.put("serverIp", str4);
            if (i10 == 0) {
                jSONObject.put(StatsConstant.BW_ESTIMATE_MODE, StatsConstant.BW_EST_STRATEGY_NORMAL);
            } else if (i10 == 1) {
                jSONObject.put(StatsConstant.BW_ESTIMATE_MODE, StatsConstant.BW_EST_STRATEGY_NEGATIVE);
            }
            jSONObject.put("date", j10);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject a(String str, String str2, int i4, long j4, int i10, int i11, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_id", str);
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_NETWORKING_STATUS);
            jSONObject.put("action_id", str2);
            jSONObject.put("streamId", str2);
            jSONObject = a(jSONObject, j4);
            jSONObject.put(StatsConstant.DROP_FRAME_COUNT, a(i10 + i11));
            jSONObject.put(StatsConstant.DROP_FRAME_COUNT_AM, b(i10));
            jSONObject.put(StatsConstant.DROP_FRAME_COUNT_BM, c(i11));
            jSONObject.put(StatsConstant.SEND_SLOW_COUNT, a());
            jSONObject.put(StatsConstant.UPLOAD_SPEED, f(i4));
            jSONObject.put(StatsConstant.NETWORK_STAT_FREQUENCY, 5000);
            jSONObject.put("date", j10);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return jSONObject;
        }
    }

    public static JSONObject a(String str, long j4, long j10, int i4, int i10, int i11, long j11) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_WLD_UPLOAD);
            jSONObject.put("streamId", str);
            jSONObject.put(StatsConstant.END_ROLE, StatsConstant.BODY_TYPE_END_TYPE);
            jSONObject.put(StatsConstant.END_ROLE, StatsConstant.BODY_TYPE_END_TYPE);
            jSONObject.put(StatsConstant.PTS, j4);
            jSONObject.put(StatsConstant.PTS_DIFF, a(j4));
            jSONObject.put(StatsConstant.AUDIO_DURATION, c(j10));
            jSONObject.put(StatsConstant.TIME_COST, b(j11));
            jSONObject.put(StatsConstant.VIDEO_FRAME_NUM, i4);
            jSONObject.put(StatsConstant.AUDIO_DELAY_MIN, d(i11));
            jSONObject.put(StatsConstant.AUDIO_DELAY_MAX, e(i11));
            jSONObject.put(StatsConstant.ENCODE_DELAY, i10);
            jSONObject.put(StatsConstant.SEND_DELAY, i11);
            jSONObject.put("date", j11);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    public static JSONObject a(String str, String str2, String str3, int i4, int i10, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_id", str);
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_CONNECTION_STATUS);
            jSONObject.put("action_id", str2);
            jSONObject.put("streamId", str2);
            jSONObject.put(StatsConstant.DNS_PARSE_TIME, i4);
            jSONObject.put(StatsConstant.DNS_IP, str3);
            jSONObject.put("connectDt", i10);
            jSONObject.put("date", j4);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static JSONObject a(String str, String str2, String str3, Context context, int i4, String str4, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_id", str2);
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_START_STREAMING);
            jSONObject.put("action_id", str3);
            jSONObject.put("streamId", str3);
            jSONObject.put("url", str);
            jSONObject.put(StatsConstant.STREAM_STATUS, "fail");
            jSONObject.put("fail_code", i4);
            jSONObject.put("net_type", c.b(context));
            jSONObject.put("net_des", c.c(context));
            if (str4 == null) {
                str4 = "unknown";
            }
            jSONObject.put("serverIp", str4);
            jSONObject.put("date", j4);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static JSONObject a(String str, String str2, Context context, int i4, int i10, long j4, int i11, int i12, long j10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("_id", str);
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_END_STREAMING);
            jSONObject.put("action_id", str2);
            jSONObject.put("streamId", str2);
            jSONObject.put(StatsConstant.STREAM_TIME_LENGTH, c());
            jSONObject.put(StatsConstant.SEND_SLOW_COUNT, b());
            jSONObject.put(StatsConstant.DROP_FRAME_COUNT, i11 + i12);
            jSONObject.put(StatsConstant.DROP_FRAME_COUNT_AM, i11);
            jSONObject.put(StatsConstant.DROP_FRAME_COUNT_BM, i12);
            jSONObject.put("net_type", c.b(context));
            jSONObject.put("net_des", c.c(context));
            jSONObject.put(StatsConstant.UPLOAD_SIZE, i10);
            jSONObject.put(StatsConstant.ENCODE_FRAME_COUNT, j4);
            jSONObject.put(StatsConstant.END_TYPE, i4);
            jSONObject.put(StatsConstant.END_ROLE, StatsConstant.BODY_TYPE_END_TYPE);
            jSONObject.put("date", j10);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static JSONObject a(long j4, Context context, String... strArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_BEAUTY);
            if (strArr.length > 0) {
                StringBuilder sb = new StringBuilder(strArr[0]);
                if (strArr.length > 1) {
                    for (int i4 = 1; i4 < strArr.length; i4++) {
                        if (strArr[i4] != null) {
                            sb.append("_");
                            sb.append(strArr[i4]);
                        }
                    }
                }
                jSONObject.put(StatsConstant.BEAUTY_TYPE, sb.toString());
            }
            jSONObject.put("net_type", c.b(context));
            jSONObject.put("date", j4);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static JSONObject a(String str, Context context, long j4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("type", 100);
            jSONObject.put("body_type", StatsConstant.BODY_TYPE_FUNCTION_POINT);
            jSONObject.put(StatsConstant.FUNCTION_TYPE, str);
            jSONObject.put("net_type", c.b(context));
            jSONObject.put("date", j4);
            return jSONObject;
        } catch (JSONException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private static int a(int i4) {
        int m9 = i4 - b.a().m();
        b.a().b(i4);
        return m9;
    }

    private static int a() {
        int i4 = b.a().i();
        int p9 = i4 - b.a().p();
        b.a().e(i4);
        return p9;
    }

    private static long a(long j4) {
        long r9 = j4 - b.a().r();
        b.a().b(j4);
        return r9;
    }

    public static JSONObject a(JSONObject jSONObject, long j4) {
        long l10 = j4 - b.a().l();
        b.a().a(j4);
        try {
            jSONObject.put(StatsConstant.ENCODE_FRAME_COUNT, l10);
            jSONObject.put(StatsConstant.AVERAGE_FRAME, l10 < 5 ? 1 : (int) (l10 / 5));
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        return jSONObject;
    }

    private static float a(boolean z9, float f10) {
        float q9 = b.a().q();
        if (z9) {
            float f11 = f10 - q9;
            b.a().a(f10);
            return f11;
        }
        float f12 = q9 - f10;
        b.a().a(f10);
        return f12;
    }
}
