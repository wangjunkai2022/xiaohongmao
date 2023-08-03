package com.qennnsad.aknkaksd.data.bean;

/* loaded from: classes3.dex */
public class IDBean {
    private int dist;
    private int emulator;
    private String issued;
    private int lob;
    private String nonce;
    private String plat;
    private String pver;
    private int rid;
    private String uuid;
    private String ver;

    public int getDist() {
        return this.dist;
    }

    public int getEmulator() {
        return this.emulator;
    }

    public String getIssued() {
        return this.issued;
    }

    public int getLob() {
        return this.lob;
    }

    public String getNonce() {
        return this.nonce;
    }

    public String getPlat() {
        return this.plat;
    }

    public String getPver() {
        return this.pver;
    }

    public int getRid() {
        return this.rid;
    }

    public String getUuid() {
        return this.uuid;
    }

    public String getVer() {
        return this.ver;
    }

    public void setDist(int i4) {
        this.dist = i4;
    }

    public void setEmulator(int i4) {
        this.emulator = i4;
    }

    public void setIssued(String str) {
        this.issued = str;
    }

    public void setLob(int i4) {
        this.lob = i4;
    }

    public void setNonce(String str) {
        this.nonce = str;
    }

    public void setPlat(String str) {
        this.plat = str;
    }

    public void setPver(String str) {
        this.pver = str;
    }

    public void setRid(int i4) {
        this.rid = i4;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }

    public String toString() {
        return "IDBean{plat='" + this.plat + "', uuid='" + this.uuid + "', ver='" + this.ver + "', emulator=" + this.emulator + ", dist=" + this.dist + ", issued='" + this.issued + "', lob=" + this.lob + ", rid=" + this.rid + ", pver='" + this.pver + "', nonce='" + this.nonce + "'}";
    }
}
