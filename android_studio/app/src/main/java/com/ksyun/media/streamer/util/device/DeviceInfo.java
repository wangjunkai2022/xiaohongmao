package com.ksyun.media.streamer.util.device;

import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class DeviceInfo {
    public static final String BAND_VALUE = "band";
    public static final String ENCODE_264_VALUE = "264hw_enc";
    public static final String ENCODE_265_VALUE = "265hw_enc";
    public static final int ENCODE_HW_SUPPORT = 1;
    public static final int ENCODE_HW_UNSUPPORT = 0;
    public String band;
    public int decode;
    public int encode_h264;
    public int encode_h265;
    public String model;
    public String osver;

    public DeviceInfo(String str, String str2) {
        this.model = str;
        this.osver = str2;
        this.encode_h264 = 0;
        this.band = "";
    }

    public boolean compareDeviceInfo(DeviceInfo deviceInfo) {
        return deviceInfo.encode_h264 == this.encode_h264 && deviceInfo.encode_h265 == this.encode_h265;
    }

    public String printDeviceInfo() {
        return this.model + "(model)_" + this.osver + "(osver)_" + this.band + "(band)_" + this.encode_h264 + "(encode_h264)" + this.encode_h265 + "(encode_h265)";
    }

    public void saveDeviceInfoForLocal(SharedPreferences.Editor editor) {
        editor.putInt(ENCODE_264_VALUE, this.encode_h264);
        editor.putInt(ENCODE_265_VALUE, this.encode_h265);
        editor.putString(BAND_VALUE, this.band);
    }

    public DeviceInfo(JSONObject jSONObject, String str, String str2) {
        this.model = str;
        this.osver = str2;
        try {
            this.band = jSONObject.getString(BAND_VALUE);
            this.encode_h264 = jSONObject.getInt(ENCODE_264_VALUE);
            this.encode_h265 = jSONObject.getInt(ENCODE_265_VALUE);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }

    public DeviceInfo(SharedPreferences sharedPreferences, String str, String str2) {
        this.model = str;
        this.osver = str2;
        this.encode_h264 = sharedPreferences.getInt(ENCODE_264_VALUE, 0);
        this.encode_h265 = sharedPreferences.getInt(ENCODE_265_VALUE, 0);
        this.band = sharedPreferences.getString(BAND_VALUE, "");
    }
}
