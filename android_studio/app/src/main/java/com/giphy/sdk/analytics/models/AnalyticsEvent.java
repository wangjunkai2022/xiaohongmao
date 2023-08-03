package com.giphy.sdk.analytics.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.giphy.sdk.analytics.models.enums.ActionType;
import com.giphy.sdk.analytics.models.enums.EventType;
import com.google.gson.annotations.SerializedName;
import com.ksyun.media.streamer.logstats.StatsConstant;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m.b;
import m8.g;
import m8.h;

/* compiled from: AnalyticsEvent.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012(\b\u0002\u0010\f\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u000e\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0012J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\u0019\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001eHÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0010\u0010\u0002\u001a\u00020\u00038\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R.\u0010\f\u001a\"\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\rj\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u0001`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R \u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0018\"\u0004\b\u001a\u0010\u001bR\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018¨\u0006$"}, d2 = {"Lcom/giphy/sdk/analytics/models/AnalyticsEvent;", "Landroid/os/Parcelable;", "analyticsResponsePayload", "", "eventType", "Lcom/giphy/sdk/analytics/models/enums/EventType;", "actionType", "Lcom/giphy/sdk/analytics/models/enums/ActionType;", "gifId", b.f86919c, "ts", "", "attributes", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "userId", "loggedInUserId", "randomId", "(Ljava/lang/String;Lcom/giphy/sdk/analytics/models/enums/EventType;Lcom/giphy/sdk/analytics/models/enums/ActionType;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getActionType", "()Lcom/giphy/sdk/analytics/models/enums/ActionType;", "getEventType", "()Lcom/giphy/sdk/analytics/models/enums/EventType;", "getGifId", "()Ljava/lang/String;", "getRandomId", "setRandomId", "(Ljava/lang/String;)V", "getUserId", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class AnalyticsEvent implements Parcelable {
    public static final Parcelable.Creator<AnalyticsEvent> CREATOR = new Creator();
    @SerializedName("action_type")
    @h
    private final ActionType actionType;
    @SerializedName("analytics_response_payload")
    private final String analyticsResponsePayload;
    private final HashMap<String, String> attributes;
    @SerializedName(StatsConstant.EVENT_TYPE)
    @h
    private final EventType eventType;
    @SerializedName("gif_id")
    @h
    private final String gifId;
    @SerializedName("logged_in_user_id")
    private final String loggedInUserId;
    @SerializedName("random_id")
    @h
    private String randomId;
    private final String tid;
    private final long ts;
    @SerializedName("user_id")
    @h
    private final String userId;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<AnalyticsEvent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final AnalyticsEvent createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            String readString = in.readString();
            HashMap hashMap = null;
            EventType eventType = in.readInt() != 0 ? (EventType) Enum.valueOf(EventType.class, in.readString()) : null;
            ActionType actionType = in.readInt() != 0 ? (ActionType) Enum.valueOf(ActionType.class, in.readString()) : null;
            String readString2 = in.readString();
            String readString3 = in.readString();
            long readLong = in.readLong();
            if (in.readInt() != 0) {
                int readInt = in.readInt();
                hashMap = new HashMap(readInt);
                while (readInt != 0) {
                    hashMap.put(in.readString(), in.readString());
                    readInt--;
                }
            }
            return new AnalyticsEvent(readString, eventType, actionType, readString2, readString3, readLong, hashMap, in.readString(), in.readString(), in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final AnalyticsEvent[] newArray(int i4) {
            return new AnalyticsEvent[i4];
        }
    }

    public AnalyticsEvent(@g String analyticsResponsePayload, @h EventType eventType, @h ActionType actionType, @h String str, @h String str2, long j4, @h HashMap<String, String> hashMap, @h String str3, @h String str4, @h String str5) {
        Intrinsics.checkNotNullParameter(analyticsResponsePayload, "analyticsResponsePayload");
        this.analyticsResponsePayload = analyticsResponsePayload;
        this.eventType = eventType;
        this.actionType = actionType;
        this.gifId = str;
        this.tid = str2;
        this.ts = j4;
        this.attributes = hashMap;
        this.userId = str3;
        this.loggedInUserId = str4;
        this.randomId = str5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final ActionType getActionType() {
        return this.actionType;
    }

    @h
    public final EventType getEventType() {
        return this.eventType;
    }

    @h
    public final String getGifId() {
        return this.gifId;
    }

    @h
    public final String getRandomId() {
        return this.randomId;
    }

    @h
    public final String getUserId() {
        return this.userId;
    }

    public final void setRandomId(@h String str) {
        this.randomId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.analyticsResponsePayload);
        EventType eventType = this.eventType;
        if (eventType != null) {
            parcel.writeInt(1);
            parcel.writeString(eventType.name());
        } else {
            parcel.writeInt(0);
        }
        ActionType actionType = this.actionType;
        if (actionType != null) {
            parcel.writeInt(1);
            parcel.writeString(actionType.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.gifId);
        parcel.writeString(this.tid);
        parcel.writeLong(this.ts);
        HashMap<String, String> hashMap = this.attributes;
        if (hashMap != null) {
            parcel.writeInt(1);
            parcel.writeInt(hashMap.size());
            for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                parcel.writeString(entry.getKey());
                parcel.writeString(entry.getValue());
            }
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.userId);
        parcel.writeString(this.loggedInUserId);
        parcel.writeString(this.randomId);
    }

    public /* synthetic */ AnalyticsEvent(String str, EventType eventType, ActionType actionType, String str2, String str3, long j4, HashMap hashMap, String str4, String str5, String str6, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? null : eventType, (i4 & 4) != 0 ? null : actionType, (i4 & 8) != 0 ? null : str2, (i4 & 16) != 0 ? null : str3, (i4 & 32) != 0 ? 0L : j4, (i4 & 64) != 0 ? null : hashMap, str4, str5, str6);
    }
}
