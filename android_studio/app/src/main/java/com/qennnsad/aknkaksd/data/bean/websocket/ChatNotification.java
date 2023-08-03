package com.qennnsad.aknkaksd.data.bean.websocket;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatNotification.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J;\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;", "icon", "", "background", "content", "entities", "", "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getBackground", "()Ljava/lang/String;", "getContent", "getEntities", "()Ljava/util/List;", "getIcon", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatNotification implements RoomPublicMsg {
    @h
    private final String background;
    @g
    private final String content;
    @g
    private final List<ChatNotificationEntity> entities;
    @h
    private final String icon;

    public ChatNotification(@h String str, @h String str2, @g String content, @g List<ChatNotificationEntity> entities) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(entities, "entities");
        this.icon = str;
        this.background = str2;
        this.content = content;
        this.entities = entities;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChatNotification copy$default(ChatNotification chatNotification, String str, String str2, String str3, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = chatNotification.icon;
        }
        if ((i4 & 2) != 0) {
            str2 = chatNotification.background;
        }
        if ((i4 & 4) != 0) {
            str3 = chatNotification.content;
        }
        if ((i4 & 8) != 0) {
            list = chatNotification.entities;
        }
        return chatNotification.copy(str, str2, str3, list);
    }

    @h
    public final String component1() {
        return this.icon;
    }

    @h
    public final String component2() {
        return this.background;
    }

    @g
    public final String component3() {
        return this.content;
    }

    @g
    public final List<ChatNotificationEntity> component4() {
        return this.entities;
    }

    @g
    public final ChatNotification copy(@h String str, @h String str2, @g String content, @g List<ChatNotificationEntity> entities) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(entities, "entities");
        return new ChatNotification(str, str2, content, entities);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatNotification) {
            ChatNotification chatNotification = (ChatNotification) obj;
            return Intrinsics.areEqual(this.icon, chatNotification.icon) && Intrinsics.areEqual(this.background, chatNotification.background) && Intrinsics.areEqual(this.content, chatNotification.content) && Intrinsics.areEqual(this.entities, chatNotification.entities);
        }
        return false;
    }

    @h
    public final String getBackground() {
        return this.background;
    }

    @g
    public final String getContent() {
        return this.content;
    }

    @g
    public final List<ChatNotificationEntity> getEntities() {
        return this.entities;
    }

    @h
    public final String getIcon() {
        return this.icon;
    }

    public int hashCode() {
        String str = this.icon;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.background;
        return ((((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.content.hashCode()) * 31) + this.entities.hashCode();
    }

    @g
    public String toString() {
        return "ChatNotification(icon=" + this.icon + ", background=" + this.background + ", content=" + this.content + ", entities=" + this.entities + ')';
    }
}
