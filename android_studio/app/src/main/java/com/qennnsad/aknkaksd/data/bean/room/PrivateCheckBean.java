package com.qennnsad.aknkaksd.data.bean.room;

import android.os.Parcel;
import android.os.Parcelable;
import com.alipay.sdk.util.i;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;

/* loaded from: classes3.dex */
public class PrivateCheckBean implements Parcelable {
    public static final Parcelable.Creator<PrivateCheckBean> CREATOR = new Parcelable.Creator<PrivateCheckBean>() { // from class: com.qennnsad.aknkaksd.data.bean.room.PrivateCheckBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateCheckBean createFromParcel(Parcel parcel) {
            return new PrivateCheckBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateCheckBean[] newArray(int i4) {
            return new PrivateCheckBean[i4];
        }
    };
    private PrivateLimitBean.StreamBean stream;
    private String ticket;

    protected PrivateCheckBean(Parcel parcel) {
        this.stream = (PrivateLimitBean.StreamBean) parcel.readParcelable(PrivateLimitBean.StreamBean.class.getClassLoader());
        this.ticket = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PrivateLimitBean.StreamBean getStream() {
        return this.stream;
    }

    public String getTicket() {
        return this.ticket;
    }

    public void setStream(PrivateLimitBean.StreamBean streamBean) {
        this.stream = streamBean;
    }

    public void setTicket(String str) {
        this.ticket = str;
    }

    public String toString() {
        return "PrivateCheckBean{stream=" + this.stream + ",ticket=" + this.ticket + i.f6967d;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.stream, i4);
        parcel.writeString(this.ticket);
    }
}
