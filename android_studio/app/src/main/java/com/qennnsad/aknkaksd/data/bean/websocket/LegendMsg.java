package com.qennnsad.aknkaksd.data.bean.websocket;

import kotlin.Metadata;
import m8.g;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: LegendMsg.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0014\u0010\r\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;", "()V", "amount", "", "getAmount", "()D", "scene", "", "getScene", "()Ljava/lang/String;", MessageBundle.TITLE_ENTRY, "getTitle", "type", "getType", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public class LegendMsg extends RoomMysterableMsg {
    private final double amount;
    @g
    private final String type = "";
    @g
    private final String title = "";
    @g
    private final String scene = "";

    public final double getAmount() {
        return this.amount;
    }

    @g
    public final String getScene() {
        return this.scene;
    }

    @g
    public final String getTitle() {
        return this.title;
    }

    @g
    public final String getType() {
        return this.type;
    }

    @g
    public String toString() {
        return "LegendMsg{type='" + this.type + "', title='" + this.title + "', scene='" + this.scene + "', is_mystery=" + getIsMystery() + ", amount=" + this.amount;
    }
}
