package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* loaded from: classes3.dex */
public class LiveAudienceListMsg {
    @SerializedName("adminer_list")
    private List<AudienceInfo> adminList;
    @SerializedName("client_list")
    private List<AudienceInfo> clientList;
    @SerializedName("viewer_num")
    private int guestCount;
    private int room_id = 0;
    @SerializedName("seat_count")
    private int seat_count;
    @SerializedName("all_num")
    private int totalCount;

    public List<AudienceInfo> getAdminList() {
        return this.adminList;
    }

    public List<AudienceInfo> getClientList() {
        return this.clientList;
    }

    public int getGuestCount() {
        return this.guestCount;
    }

    public int getRoom_id() {
        return this.room_id;
    }

    public int getSeat_count() {
        return this.seat_count;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public void setAdminList(List<AudienceInfo> list) {
        this.adminList = list;
    }

    public void setClientList(List<AudienceInfo> list) {
        this.clientList = list;
    }

    public void setGuestCount(int i4) {
        this.guestCount = i4;
    }

    public void setRoom_id(int i4) {
        this.room_id = i4;
    }

    public void setSeat_count(int i4) {
        this.seat_count = i4;
    }

    public void setTotalCount(int i4) {
        this.totalCount = i4;
    }

    public String toString() {
        return "LiveAudienceListMsg{totalCount=" + this.totalCount + ", guestCount=" + this.guestCount + ", adminList=" + this.adminList + ", clientList=" + this.clientList + ", seat_count=" + this.seat_count + ", room_id=" + this.room_id + '}';
    }
}
