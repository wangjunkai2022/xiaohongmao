package g5;

import android.os.Build;
import com.google.gson.Gson;
import com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo;
import com.qennnsad.aknkaksd.data.bean.IDBean;
import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import com.qennnsad.aknkaksd.util.AES;
import com.qennnsad.aknkaksd.util.o0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LocalIDManager.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\n"}, d2 = {"Lg5/d;", "", "", "a", "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;", "prefsHelper", "Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;", "deviceInfo", "<init>", "(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Lcom/qennnsad/aknkaksd/analytics/data/device/DeviceInfo;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final PrefsHelper f67828a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final DeviceInfo f67829b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final String f67830c;

    @u7.a
    public d(@m8.g PrefsHelper prefsHelper, @m8.g DeviceInfo deviceInfo) {
        String json;
        Intrinsics.checkNotNullParameter(prefsHelper, "prefsHelper");
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        this.f67828a = prefsHelper;
        this.f67829b = deviceInfo;
        IDBean iDBean = new IDBean();
        iDBean.setPlat("android");
        iDBean.setVer(com.qennnsad.aknkaksd.e.f48514f);
        iDBean.setUuid(prefsHelper.getImei());
        iDBean.setEmulator(deviceInfo.isEmulator() ? 1 : 0);
        iDBean.setDist(0);
        iDBean.setNonce("4aq871z9");
        iDBean.setIssued(com.qennnsad.aknkaksd.e.f48531w);
        iDBean.setLob(1);
        iDBean.setRid(1);
        iDBean.setPver(String.valueOf(Build.VERSION.SDK_INT));
        o0.g("LocalIDManager", "idbean:" + iDBean);
        Gson gson = new Gson();
        try {
            String aesencrypt_tiger2 = AES.aesencrypt_tiger2(gson.toJson(iDBean));
            Intrinsics.checkNotNullExpressionValue(aesencrypt_tiger2, "aesencrypt_tiger2(gson.toJson(idBean))");
            int length = aesencrypt_tiger2.length() - 1;
            int i4 = 0;
            boolean z9 = false;
            while (i4 <= length) {
                boolean z10 = Intrinsics.compare((int) aesencrypt_tiger2.charAt(!z9 ? i4 : length), 32) <= 0;
                if (z9) {
                    if (!z10) {
                        break;
                    }
                    length--;
                } else if (z10) {
                    i4++;
                } else {
                    z9 = true;
                }
            }
            json = aesencrypt_tiger2.subSequence(i4, length + 1).toString();
        } catch (Exception e4) {
            o0.d("LocalIDManager", "Computing device_id error", e4);
            json = gson.toJson(iDBean);
            Intrinsics.checkNotNullExpressionValue(json, "{\n            L.e(\"Local….toJson(idBean)\n        }");
        }
        this.f67830c = json;
        o0.g("LocalIDManager", "device_id: " + json);
    }

    @m8.g
    public final String a() {
        o0.g("device_id", "LocalIDManager:---getDeviceid():" + this.f67830c);
        String str = this.f67830c;
        int length = str.length() - 1;
        int i4 = 0;
        boolean z9 = false;
        while (i4 <= length) {
            boolean z10 = Intrinsics.compare((int) str.charAt(!z9 ? i4 : length), 32) <= 0;
            if (z9) {
                if (!z10) {
                    break;
                }
                length--;
            } else if (z10) {
                i4++;
            } else {
                z9 = true;
            }
        }
        return str.subSequence(i4, length + 1).toString();
    }
}
