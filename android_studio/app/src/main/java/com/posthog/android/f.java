package com.posthog.android;

import android.content.ContentResolver;
import android.content.Context;
import android.os.AsyncTask;
import android.provider.Settings;
import android.util.Pair;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GetAdvertisingIdTask.java */
/* loaded from: classes3.dex */
public class f extends AsyncTask<Context, Void, Pair<String, Boolean>> {

    /* renamed from: a  reason: collision with root package name */
    private final o f47474a;

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f47475b;

    /* renamed from: c  reason: collision with root package name */
    private final i f47476c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(o oVar, CountDownLatch countDownLatch, i iVar) {
        this.f47474a = oVar;
        this.f47475b = countDownLatch;
        this.f47476c = iVar;
    }

    private Pair<String, Boolean> b(Context context) throws Exception {
        ContentResolver contentResolver = context.getContentResolver();
        if (Settings.Secure.getInt(contentResolver, "limit_ad_capturing") != 0) {
            this.f47476c.a("Not collecting advertising ID because limit_ad_capturing (Amazon Fire OS) is true.", new Object[0]);
            return Pair.create(null, Boolean.FALSE);
        }
        return Pair.create(Settings.Secure.getString(contentResolver, "advertising_id"), Boolean.TRUE);
    }

    private Pair<String, Boolean> c(Context context) throws Exception {
        Object invoke = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", Context.class).invoke(null, context);
        if (((Boolean) invoke.getClass().getMethod("isLimitAdCapturingEnabled", new Class[0]).invoke(invoke, new Object[0])).booleanValue()) {
            this.f47476c.a("Not collecting advertising ID because isLimitAdCapturingEnabled (Google Play Services) is true.", new Object[0]);
            return Pair.create(null, Boolean.FALSE);
        }
        return Pair.create((String) invoke.getClass().getMethod("getId", new Class[0]).invoke(invoke, new Object[0]), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public Pair<String, Boolean> doInBackground(Context... contextArr) {
        Context context = contextArr[0];
        try {
            return c(context);
        } catch (Exception e4) {
            this.f47476c.b(e4, "Unable to collect advertising ID from Google Play Services.", new Object[0]);
            try {
                return b(context);
            } catch (Exception e10) {
                this.f47476c.b(e10, "Unable to collect advertising ID from Amazon Fire OS.", new Object[0]);
                this.f47476c.a("Unable to collect advertising ID from Amazon Fire OS and Google Play Services.", new Object[0]);
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: d */
    public void onPostExecute(Pair<String, Boolean> pair) {
        super.onPostExecute(pair);
        if (pair == null) {
            return;
        }
        try {
            this.f47474a.u((String) pair.first, ((Boolean) pair.second).booleanValue());
        } finally {
            this.f47475b.countDown();
        }
    }
}
