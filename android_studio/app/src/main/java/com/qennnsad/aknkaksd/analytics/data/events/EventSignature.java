package com.qennnsad.aknkaksd.analytics.data.events;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: Event.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b!\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\b\u0002\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0002\u0010\u0006R\u001b\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$¨\u0006%"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;", "", "keys", "", "", "readableName", "(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V", "getKeys", "()[Ljava/lang/String;", "[Ljava/lang/String;", "getReadableName", "()Ljava/lang/String;", "APP_OPEN", "APP_CLOSED", "APP_SIGN_UP", "APP_LOGIN", "APP_IM_LOGIN", "APP_GUEST_LOGIN", "APP_LOGOUT", "APP_CLICK", "APP_AD_CLICK", "APP_SHOW_LAUNCH_AD", "APP_CLICK_LAUNCH_AD", "APP_ENTER_ROOM", "APP_LEAVE_ROOM", "APP_ROOM_STARTED", "APP_ROOM_ENDED", "APP_BLUETOOTH_ENABLED", "APP_SEARCH", "APP_PK_BATTLE_START", "APP_PK_BATTLE_END", "APP_MAIN_PAGE_CATEGORY_CHANGED", "APP_GIFT_SENT", "APP_BUY_VIP", "APP_RECHARGE_DIALOG_CREATED", "APP_RECHARGE_DIALOG_FAILED", "APP_RECHARGE_DIALOG_SUCCESS", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public enum EventSignature {
    APP_OPEN(null, "Application Opened", 1, null),
    APP_CLOSED(null, "Application Closed", 1, null),
    APP_SIGN_UP(null, "Application Sign Up", 1, null),
    APP_LOGIN(null, "Application Login", 1, null),
    APP_IM_LOGIN(null, "IM Login", 1, null),
    APP_GUEST_LOGIN(null, "Application Guest Login", 1, null),
    APP_LOGOUT(null, "Application Logout", 1, null),
    APP_CLICK(new String[]{"screen_id", "event_title", "button_title"}, "Button clicked"),
    APP_AD_CLICK(new String[]{TypedValues.Transition.S_TO}, "Ad Clicked"),
    APP_SHOW_LAUNCH_AD(new String[]{"adsId"}, "ADS At App Launch Shown"),
    APP_CLICK_LAUNCH_AD(new String[]{"adsId"}, "ADS At App Launch Click"),
    APP_ENTER_ROOM(new String[]{"room_number", f.f54199a, "room_type"}, "Enter Room"),
    APP_LEAVE_ROOM(new String[]{"duration", "room_number", f.f54199a, "room_type"}, "Leave Room"),
    APP_ROOM_STARTED(new String[]{"room_number", "room_type"}, "Room Started"),
    APP_ROOM_ENDED(new String[]{"room_number", "received_coins_count", "average_online", "max_online", "duration"}, "Room Ended"),
    APP_BLUETOOTH_ENABLED(new String[]{"room_number"}, "Bluetooth Device Enabled"),
    APP_SEARCH(new String[]{"keyword"}, "Search Anchor"),
    APP_PK_BATTLE_START(new String[]{"room_number"}, "PK Battle Start"),
    APP_PK_BATTLE_END(new String[]{"room_number", "received_coins_count", "duration"}, "PK Battle End"),
    APP_MAIN_PAGE_CATEGORY_CHANGED(new String[]{MessageBundle.TITLE_ENTRY}, "Main Page Tab Open"),
    APP_GIFT_SENT(new String[]{"gift_price", "gift_name", "streamer_id", "room_type", "bluetooth_on"}, "Gift Sent"),
    APP_BUY_VIP(new String[]{"VIP_type", "screen_id", "streamer_id"}, "Buy VIP"),
    APP_RECHARGE_DIALOG_CREATED(new String[]{"agent_id", "streamer_id"}, "Recharge dialog created"),
    APP_RECHARGE_DIALOG_FAILED(new String[]{"agent_id"}, "Recharge dialog failed"),
    APP_RECHARGE_DIALOG_SUCCESS(new String[]{"agent_id"}, "Recharge dialog success");
    
    @h
    private final String[] keys;
    @g
    private final String readableName;

    EventSignature(String[] strArr, String str) {
        this.keys = strArr;
        this.readableName = str;
    }

    @h
    public final String[] getKeys() {
        return this.keys;
    }

    @g
    public final String getReadableName() {
        return this.readableName;
    }

    /* synthetic */ EventSignature(String[] strArr, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : strArr, str);
    }
}
