package com.ksyun.media.player;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.koushikdutta.async.http.AsyncHttpPost;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class KSYHardwareDecodeWhiteList {
    public static final int KSY_STATUS_CONNECTING = 11;
    public static final int KSY_STATUS_FAIL = 13;
    public static final int KSY_STATUS_IDLE = 10;
    public static final int KSY_STATUS_OK = 12;

    /* renamed from: a  reason: collision with root package name */
    private static KSYHardwareDecodeWhiteList f45193a;

    /* renamed from: e  reason: collision with root package name */
    private String f45197e;

    /* renamed from: f  reason: collision with root package name */
    private String f45198f;

    /* renamed from: g  reason: collision with root package name */
    private Context f45199g;

    /* renamed from: b  reason: collision with root package name */
    private final String f45194b = "http://sdk.ks-live.com:8989/api/CanHWDecode/2017-01-01";

    /* renamed from: c  reason: collision with root package name */
    private boolean f45195c = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45196d = false;

    /* renamed from: h  reason: collision with root package name */
    private int f45200h = 10;

    /* renamed from: i  reason: collision with root package name */
    private a f45201i = null;

    private KSYHardwareDecodeWhiteList() {
    }

    public static KSYHardwareDecodeWhiteList getInstance() {
        if (f45193a == null) {
            synchronized (KSYHardwareDecodeWhiteList.class) {
                if (f45193a == null) {
                    f45193a = new KSYHardwareDecodeWhiteList();
                }
            }
        }
        return f45193a;
    }

    public int getCurrentStatus() {
        return this.f45200h;
    }

    public void init(Context context) {
        if (context != null) {
            if (this.f45200h != 10) {
                return;
            }
            this.f45199g = context.getApplicationContext();
            long a10 = com.ksyun.media.player.e.a.a(context, com.ksyun.media.player.e.a.f45486f, 0L);
            long a11 = com.ksyun.media.player.e.a.a(context, com.ksyun.media.player.e.a.f45487g, 0L);
            if (a10 > 0 && a11 > 0 && System.currentTimeMillis() - a11 < a10) {
                this.f45195c = com.ksyun.media.player.e.a.a(context, com.ksyun.media.player.e.a.f45482b, false);
                this.f45196d = com.ksyun.media.player.e.a.a(context, com.ksyun.media.player.e.a.f45483c, false);
                this.f45200h = 12;
                return;
            } else if (this.f45201i == null) {
                a aVar = new a();
                this.f45201i = aVar;
                aVar.execute("http://sdk.ks-live.com:8989/api/CanHWDecode/2017-01-01");
                this.f45200h = 11;
                return;
            } else {
                return;
            }
        }
        throw new IllegalArgumentException("The input argument CONTEXT can't be null!");
    }

    public boolean supportHardwareDecodeH264() {
        if (this.f45200h == 12) {
            return this.f45195c;
        }
        throw new IllegalStateException("This can only be called when the status is KSY_STATUS_OK");
    }

    public boolean supportHardwareDecodeH265() {
        if (this.f45200h == 12) {
            return this.f45196d;
        }
        throw new IllegalStateException("This can only be called when the status is KSY_STATUS_OK");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            this.f45200h = 13;
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(new JSONObject(str).getString(com.ksyun.media.player.e.b.f45488a));
            if (jSONObject.getInt(com.ksyun.media.player.e.b.f45489b) != 0) {
                this.f45200h = 13;
                return;
            }
            long j4 = jSONObject.getInt(com.ksyun.media.player.e.b.f45490c) * 1000;
            this.f45197e = jSONObject.getString(com.ksyun.media.player.e.b.f45491d);
            this.f45198f = jSONObject.getString(com.ksyun.media.player.e.b.f45492e);
            if (!TextUtils.isEmpty(this.f45197e)) {
                this.f45195c = true;
                com.ksyun.media.player.e.a.b(this.f45199g, com.ksyun.media.player.e.a.f45484d, this.f45197e);
            }
            if (!TextUtils.isEmpty(this.f45198f)) {
                this.f45196d = true;
                com.ksyun.media.player.e.a.b(this.f45199g, com.ksyun.media.player.e.a.f45485e, this.f45198f);
            }
            com.ksyun.media.player.e.a.b(this.f45199g, com.ksyun.media.player.e.a.f45482b, this.f45195c);
            com.ksyun.media.player.e.a.b(this.f45199g, com.ksyun.media.player.e.a.f45483c, this.f45196d);
            com.ksyun.media.player.e.a.b(this.f45199g, com.ksyun.media.player.e.a.f45486f, j4);
            com.ksyun.media.player.e.a.b(this.f45199g, com.ksyun.media.player.e.a.f45487g, System.currentTimeMillis());
            this.f45200h = 12;
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    /* loaded from: classes3.dex */
    private class a extends AsyncTask<String, Void, String> {
        private a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r6v11, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8, types: [java.net.HttpURLConnection] */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public String doInBackground(String... strArr) {
            BufferedReader bufferedReader;
            Throwable th;
            BufferedReader bufferedReader2;
            String str;
            ?? r62 = strArr[0];
            BufferedReader bufferedReader3 = null;
            try {
                try {
                    r62 = (HttpURLConnection) new URL(r62).openConnection();
                } catch (MalformedURLException e4) {
                    e = e4;
                    r62 = 0;
                    bufferedReader2 = null;
                } catch (IOException e10) {
                    e = e10;
                    r62 = 0;
                    bufferedReader2 = null;
                } catch (Throwable th2) {
                    bufferedReader = null;
                    th = th2;
                    r62 = 0;
                }
                try {
                    r62.setConnectTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
                    r62.setReadTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
                    r62.setRequestMethod(AsyncHttpPost.f44556o);
                    r62.setDoOutput(true);
                    r62.setDoInput(true);
                    r62.setRequestProperty("Content-Type", "application/json");
                    String a10 = com.ksyun.media.player.e.b.a(KSYHardwareDecodeWhiteList.this.f45199g);
                    OutputStream outputStream = r62.getOutputStream();
                    outputStream.write(a10.getBytes());
                    outputStream.flush();
                    int responseCode = r62.getResponseCode();
                    if (responseCode == 200) {
                        StringBuilder sb = new StringBuilder();
                        bufferedReader2 = new BufferedReader(new InputStreamReader(r62.getInputStream()));
                        while (true) {
                            try {
                                String readLine = bufferedReader2.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                sb.append(readLine);
                            } catch (MalformedURLException e11) {
                                e = e11;
                                e.printStackTrace();
                                if (bufferedReader2 != null) {
                                    try {
                                        bufferedReader2.close();
                                    } catch (IOException e12) {
                                        e12.printStackTrace();
                                    }
                                }
                                if (r62 == 0) {
                                    return null;
                                }
                                r62.disconnect();
                                return null;
                            } catch (IOException e13) {
                                e = e13;
                                e.printStackTrace();
                                if (bufferedReader2 != null) {
                                    try {
                                        bufferedReader2.close();
                                    } catch (IOException e14) {
                                        e14.printStackTrace();
                                    }
                                }
                                if (r62 == 0) {
                                    return null;
                                }
                                r62.disconnect();
                                return null;
                            }
                        }
                        str = sb.toString();
                        bufferedReader3 = bufferedReader2;
                    } else {
                        if (responseCode >= 400) {
                            KSYHardwareDecodeWhiteList.this.f45200h = 13;
                        }
                        str = null;
                    }
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (IOException e15) {
                            e15.printStackTrace();
                        }
                    }
                    r62.disconnect();
                    return str;
                } catch (MalformedURLException e16) {
                    e = e16;
                    bufferedReader2 = null;
                } catch (IOException e17) {
                    e = e17;
                    bufferedReader2 = null;
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e18) {
                            e18.printStackTrace();
                        }
                    }
                    if (r62 != 0) {
                        r62.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public void onPostExecute(String str) {
            KSYHardwareDecodeWhiteList.this.a(str);
        }
    }
}
