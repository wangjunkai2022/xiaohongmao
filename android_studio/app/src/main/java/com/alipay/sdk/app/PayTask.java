package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.sdk.util.f;
import com.alipay.sdk.util.j;
import com.alipay.sdk.util.l;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class PayTask {

    /* renamed from: g  reason: collision with root package name */
    static final Object f6741g = com.alipay.sdk.util.f.class;

    /* renamed from: a  reason: collision with root package name */
    private Activity f6742a;

    /* renamed from: b  reason: collision with root package name */
    private com.alipay.sdk.widget.a f6743b;

    /* renamed from: c  reason: collision with root package name */
    private String f6744c = "wappaygw.alipay.com/service/rest.htm";

    /* renamed from: d  reason: collision with root package name */
    private String f6745d = "mclient.alipay.com/service/rest.htm";

    /* renamed from: e  reason: collision with root package name */
    private String f6746e = "mclient.alipay.com/home/exterfaceAssign.htm";

    /* renamed from: f  reason: collision with root package name */
    private Map<String, a> f6747f = new HashMap();

    public PayTask(Activity activity) {
        this.f6742a = activity;
        p.b b10 = p.b.b();
        Activity activity2 = this.f6742a;
        com.alipay.sdk.data.c.a();
        b10.c(activity2);
        com.alipay.sdk.app.statistic.a.a(activity);
        this.f6743b = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f6980e);
    }

    private f.a a() {
        return new g(this);
    }

    private String b(String str) {
        String a10 = new p.a(this.f6742a).a(str);
        if (a10.contains("paymethod=\"expressGateway\"")) {
            return g(a10);
        }
        if (l.l(this.f6742a)) {
            com.alipay.sdk.util.f fVar = new com.alipay.sdk.util.f(this.f6742a, new g(this));
            String c10 = fVar.c(a10);
            fVar.f6955a = null;
            if (TextUtils.equals(c10, com.alipay.sdk.util.f.f6954h)) {
                return g(a10);
            }
            return TextUtils.isEmpty(c10) ? h.a() : c10;
        }
        return g(a10);
    }

    private static String c(String str, String str2) {
        String str3 = str2 + "={";
        return str.substring(str.indexOf(str3) + str3.length(), str.lastIndexOf(com.alipay.sdk.util.i.f6967d));
    }

    private String d(o.a aVar) {
        String[] strArr = aVar.f89939c;
        Intent intent = new Intent(this.f6742a, H5PayActivity.class);
        Bundle bundle = new Bundle();
        bundle.putString("url", strArr[0]);
        if (strArr.length == 2) {
            bundle.putString("cookie", strArr[1]);
        }
        intent.putExtras(bundle);
        this.f6742a.startActivity(intent);
        Object obj = f6741g;
        synchronized (obj) {
            try {
                obj.wait();
            } catch (InterruptedException unused) {
                return h.a();
            }
        }
        String str = h.f6764a;
        return TextUtils.isEmpty(str) ? h.a() : str;
    }

    private static boolean f(boolean z9, boolean z10, String str, StringBuilder sb, Map<String, String> map, String... strArr) {
        String str2;
        int length = strArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                str2 = "";
                break;
            }
            String str3 = strArr[i4];
            if (!TextUtils.isEmpty(map.get(str3))) {
                str2 = map.get(str3);
                break;
            }
            i4++;
        }
        if (TextUtils.isEmpty(str2)) {
            return !z10;
        } else if (z9) {
            sb.append(p.a.f93050d);
            sb.append(str);
            sb.append("=\"");
            sb.append(str2);
            sb.append("\"");
            return true;
        } else {
            sb.append(str);
            sb.append("=\"");
            sb.append(str2);
            sb.append("\"");
            return true;
        }
    }

    private String g(String str) {
        i iVar;
        h();
        try {
            try {
                List<o.a> b10 = o.a.b(new com.alipay.sdk.packet.impl.d().b(this.f6742a, str).a().optJSONObject(m.c.f86929c).optJSONObject(m.c.f86930d));
                for (int i4 = 0; i4 < b10.size(); i4++) {
                    if (b10.get(i4).f89937a == com.alipay.sdk.protocol.a.Update) {
                        String[] strArr = b10.get(i4).f89939c;
                        if (strArr.length == 3 && TextUtils.equals(m.b.f86919c, strArr[0])) {
                            Context context = p.b.b().f93064a;
                            com.alipay.sdk.tid.b a10 = com.alipay.sdk.tid.b.a();
                            if (!TextUtils.isEmpty(strArr[1]) && !TextUtils.isEmpty(strArr[2])) {
                                a10.f6925a = strArr[1];
                                a10.f6926b = strArr[2];
                                com.alipay.sdk.tid.a aVar = new com.alipay.sdk.tid.a(context);
                                try {
                                    aVar.k(com.alipay.sdk.util.b.a(context).b(), com.alipay.sdk.util.b.a(context).e(), a10.f6925a, a10.f6926b);
                                } catch (Exception unused) {
                                } catch (Throwable th) {
                                    aVar.close();
                                    throw th;
                                }
                                aVar.close();
                            }
                        }
                    }
                }
                i();
                for (int i10 = 0; i10 < b10.size(); i10++) {
                    if (b10.get(i10).f89937a == com.alipay.sdk.protocol.a.WapPay) {
                        String d4 = d(b10.get(i10));
                        i();
                        return d4;
                    }
                }
                i();
                iVar = null;
            } catch (IOException e4) {
                i a11 = i.a(i.NETWORK_ERROR.f6773h);
                com.alipay.sdk.app.statistic.a.f(com.alipay.sdk.app.statistic.c.f6779k, e4);
                i();
                iVar = a11;
            }
            if (iVar == null) {
                iVar = i.a(i.FAILED.f6773h);
            }
            return h.b(iVar.f6773h, iVar.f6774i, "");
        }
    }

    private void h() {
        com.alipay.sdk.widget.a aVar = this.f6743b;
        if (aVar != null) {
            aVar.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        com.alipay.sdk.widget.a aVar = this.f6743b;
        if (aVar != null) {
            aVar.f();
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:64:0x02ea
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public synchronized java.lang.String fetchOrderInfoFromH5PayUrl(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 749
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.app.PayTask.fetchOrderInfoFromH5PayUrl(java.lang.String):java.lang.String");
    }

    public synchronized String fetchTradeToken() {
        return j.d(this.f6742a, com.alipay.sdk.util.i.f6964a, "");
    }

    public String getVersion() {
        return m.a.f86906e;
    }

    public synchronized com.alipay.sdk.util.a h5Pay(String str, boolean z9) {
        com.alipay.sdk.util.a aVar = new com.alipay.sdk.util.a();
        try {
            str.trim();
            String[] split = pay(str, z9).split(com.alipay.sdk.util.i.f6965b);
            HashMap hashMap = new HashMap();
            for (String str2 : split) {
                String substring = str2.substring(0, str2.indexOf("={"));
                String str3 = substring + "={";
                hashMap.put(substring, str2.substring(str2.indexOf(str3) + str3.length(), str2.lastIndexOf(com.alipay.sdk.util.i.f6967d)));
            }
            if (hashMap.containsKey("resultStatus")) {
                aVar.c((String) hashMap.get("resultStatus"));
            }
            if (hashMap.containsKey("callBackUrl")) {
                aVar.d((String) hashMap.get("callBackUrl"));
            } else if (hashMap.containsKey("result")) {
                String str4 = (String) hashMap.get("result");
                if (str4.length() > 15) {
                    a aVar2 = this.f6747f.get(str);
                    if (aVar2 != null) {
                        if (TextUtils.isEmpty(aVar2.f6749b)) {
                            aVar.d(aVar2.f6748a);
                        } else {
                            aVar.d(com.alipay.sdk.data.a.f().f6873b.replace("$OrderId$", aVar2.f6749b));
                        }
                        this.f6747f.remove(str);
                        return aVar;
                    }
                    String e4 = l.e("&callBackUrl=\"", "\"", str4);
                    if (TextUtils.isEmpty(e4)) {
                        e4 = l.e("&call_back_url=\"", "\"", str4);
                        if (TextUtils.isEmpty(e4)) {
                            e4 = l.e("&return_url=\"", "\"", str4);
                            if (TextUtils.isEmpty(e4)) {
                                e4 = URLDecoder.decode(l.e("&return_url=", p.a.f93050d, str4), "utf-8");
                                if (TextUtils.isEmpty(e4)) {
                                    e4 = URLDecoder.decode(l.e("&callBackUrl=", p.a.f93050d, str4), "utf-8");
                                }
                            }
                        }
                    }
                    if (TextUtils.isEmpty(e4)) {
                        e4 = com.alipay.sdk.data.a.f().f6873b;
                    }
                    aVar.d(URLDecoder.decode(e4, "utf-8"));
                } else {
                    a aVar3 = this.f6747f.get(str);
                    if (aVar3 != null) {
                        aVar.d(aVar3.f6748a);
                        this.f6747f.remove(str);
                        return aVar;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0059 A[Catch: all -> 0x00dc, TryCatch #2 {, blocks: (B:4:0x0003, B:48:0x00e4, B:49:0x00f2, B:8:0x000a, B:10:0x001e, B:12:0x0026, B:14:0x0040, B:16:0x0046, B:18:0x004f, B:17:0x004b, B:19:0x0051, B:42:0x00d0, B:44:0x00d6, B:22:0x0059, B:23:0x0061, B:25:0x0064, B:27:0x006e, B:29:0x0078, B:30:0x008f, B:32:0x0092, B:34:0x009c, B:36:0x00a6, B:37:0x00b7, B:39:0x00c1, B:40:0x00ca, B:41:0x00cd), top: B:61:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d6 A[Catch: all -> 0x00dc, TRY_LEAVE, TryCatch #2 {, blocks: (B:4:0x0003, B:48:0x00e4, B:49:0x00f2, B:8:0x000a, B:10:0x001e, B:12:0x0026, B:14:0x0040, B:16:0x0046, B:18:0x004f, B:17:0x004b, B:19:0x0051, B:42:0x00d0, B:44:0x00d6, B:22:0x0059, B:23:0x0061, B:25:0x0064, B:27:0x006e, B:29:0x0078, B:30:0x008f, B:32:0x0092, B:34:0x009c, B:36:0x00a6, B:37:0x00b7, B:39:0x00c1, B:40:0x00ca, B:41:0x00cd), top: B:61:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.lang.String pay(java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.sdk.app.PayTask.pay(java.lang.String, boolean):java.lang.String");
    }

    /* loaded from: classes.dex */
    private class a {

        /* renamed from: a  reason: collision with root package name */
        String f6748a;

        /* renamed from: b  reason: collision with root package name */
        String f6749b;

        private a() {
            this.f6748a = "";
            this.f6749b = "";
        }

        private String a() {
            return this.f6748a;
        }

        private void b(String str) {
            this.f6748a = str;
        }

        private String c() {
            return this.f6749b;
        }

        private void d(String str) {
            this.f6749b = str;
        }

        /* synthetic */ a(PayTask payTask, byte b10) {
            this();
        }
    }
}
