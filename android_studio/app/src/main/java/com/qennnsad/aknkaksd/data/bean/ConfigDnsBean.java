package com.qennnsad.aknkaksd.data.bean;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import c5.j;

/* loaded from: classes3.dex */
public class ConfigDnsBean {
    private String contact_us;
    private String host;
    private String ip;
    private Integer port = 443;

    public String getContactUs() {
        return this.contact_us;
    }

    public String getHost() {
        return this.host;
    }

    public String getHostWithPort() {
        return this.host + ":" + this.port.toString();
    }

    @Nullable
    public String getHostWithProtocol(boolean z9) {
        String str = this.host;
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(!str.startsWith("http") ? TextUtils.concat(j.f4022b, this.host) : this.host);
        if (z9) {
            sb.append(":");
            sb.append(this.port.toString());
        }
        return sb.toString();
    }

    public String getIp() {
        return this.ip;
    }

    public Integer getPort() {
        return this.port;
    }

    public void setContactUs(String str) {
        this.contact_us = str;
    }

    public void setHost(String str) {
        if (str != null && str.endsWith(".")) {
            str = str.substring(0, str.length() - 1);
        }
        this.host = str;
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setPort(Integer num) {
        this.port = num;
    }

    public String toString() {
        return "ConfigDnsBean{host='" + this.host + "', ip='" + this.ip + "', port='" + this.port + "', contact_us='" + this.contact_us + "'}";
    }
}
