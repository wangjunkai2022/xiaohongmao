package com.giphy.sdk.analytics.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Session.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B!\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0011HÖ\u0001R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0018"}, d2 = {"Lcom/giphy/sdk/analytics/models/Session;", "Landroid/os/Parcelable;", "sessionId", "", "events", "", "Lcom/giphy/sdk/analytics/models/AnalyticsEvent;", "(Ljava/lang/String;Ljava/util/List;)V", "getEvents", "()Ljava/util/List;", "setEvents", "(Ljava/util/List;)V", "getSessionId", "()Ljava/lang/String;", "setSessionId", "(Ljava/lang/String;)V", "describeContents", "", "getUserId", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Session implements Parcelable {
    public static final Parcelable.Creator<Session> CREATOR = new Creator();
    @g
    private List<AnalyticsEvent> events;
    @SerializedName("session_id")
    @h
    private String sessionId;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Session> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Session createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            String readString = in.readString();
            int readInt = in.readInt();
            ArrayList arrayList = new ArrayList(readInt);
            while (readInt != 0) {
                arrayList.add(AnalyticsEvent.CREATOR.createFromParcel(in));
                readInt--;
            }
            return new Session(readString, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Session[] newArray(int i4) {
            return new Session[i4];
        }
    }

    public Session() {
        this(null, null, 3, null);
    }

    public Session(@h String str, @g List<AnalyticsEvent> events) {
        Intrinsics.checkNotNullParameter(events, "events");
        this.sessionId = str;
        this.events = events;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @g
    public final List<AnalyticsEvent> getEvents() {
        return this.events;
    }

    @h
    public final String getSessionId() {
        return this.sessionId;
    }

    @h
    public final String getUserId() {
        Object obj;
        Iterator<T> it = this.events.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            String userId = ((AnalyticsEvent) obj).getUserId();
            if (!(userId == null || userId.length() == 0)) {
                break;
            }
        }
        AnalyticsEvent analyticsEvent = (AnalyticsEvent) obj;
        if (analyticsEvent != null) {
            return analyticsEvent.getUserId();
        }
        return null;
    }

    public final void setEvents(@g List<AnalyticsEvent> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.events = list;
    }

    public final void setSessionId(@h String str) {
        this.sessionId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.sessionId);
        List<AnalyticsEvent> list = this.events;
        parcel.writeInt(list.size());
        for (AnalyticsEvent analyticsEvent : list) {
            analyticsEvent.writeToParcel(parcel, 0);
        }
    }

    public /* synthetic */ Session(String str, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? new ArrayList() : list);
    }
}
